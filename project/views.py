from rest_framework import status
from rest_framework.generics import ListAPIView
from rest_framework.response import Response
from rest_framework.permissions import IsAuthenticated
from django.db.models import Prefetch
from rest_framework.views import APIView

from project.models import UserNotification, TranslationString, UserNotificationOption
from project.serializers import NotificationSerializer
from user.models import User


class UserNotificationListView(ListAPIView):
    queryset = UserNotification.objects.all()
    serializer_class = NotificationSerializer
    permission_classes = [IsAuthenticated]

    def get(self, request, *args, **kwargs):
        user: User = request.user
        notification_type = request.query_params.get('type')
        status_ = request.query_params.get('status')
        category_id = request.query_params.get('category')

        filters = {'user': user}
        if notification_type:
            filters['notification_type'] = notification_type  # Default lookup is "__exact"
        if status_:
            filters['status'] = status_
        if category_id:
            filters['notification_template__notification_category_id'] = category_id

        self.queryset = self.queryset.filter(**filters).select_related(
            'notification_template'
        ).prefetch_related(
            Prefetch(
                'notification_template__translations',
                queryset=TranslationString.objects.filter(
                    language_id=request.user.language_id
                ),
                to_attr='prefetched_translations'
            ),
            Prefetch(
                'options',
                queryset=UserNotificationOption.objects.all()
            )
        )
        return super().get(request, *args, **kwargs)


class UserNotificationsStatusUpdateView(APIView):
    permission_classes = [IsAuthenticated]

    def put(self, request):
        user = request.user
        ids = request.data
        if not ids or not isinstance(ids, list):
            return Response({'error': 'Invalid input'}, status=status.HTTP_400_BAD_REQUEST)

        updated_count = UserNotification.objects.filter(
            user=user,
            id__in=ids
        ).update(status=1)

        return Response({'updated': updated_count}, status=status.HTTP_200_OK)
