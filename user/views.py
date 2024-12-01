from rest_framework.generics import ListAPIView
from rest_framework.permissions import IsAuthenticated

from project.services import NotificationService
from user.models import User
from user.serializers import UserListSerializer


class VacancyListView(ListAPIView):
    queryset = User.objects.all()
    serializer_class = UserListSerializer
    permission_classes = [IsAuthenticated]

    def list(self, request, *args, **kwargs):
        response = super().list(request, *args, **kwargs)

        NotificationService.create_notification(
            user=request.user,
            notification_type=1,
            template_id=1,
            options=[{'field_id': 1, 'txt': 357}, {'field_id': 2, 'txt': 'Test project 3'}]
        )
        return response
