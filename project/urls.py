from django.urls import path
from project.views import UserNotificationListView, UserNotificationsStatusUpdateView

urlpatterns = [
    path('notifications/', UserNotificationListView.as_view(), name='user-notifications'),
    path('notifications/mark-read/', UserNotificationsStatusUpdateView.as_view(), name='mark-notifications-read'),
]
