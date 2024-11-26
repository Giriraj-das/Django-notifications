from django.db import transaction
from project.models import (
    NotificationTemplate,
    UserNotification,
    UserNotificationSetting,
    UserNotificationOption,
)
from user.models import User


class NotificationService:
    @staticmethod
    def create_notification(
            user: User,
            notification_type: int,
            template_id: int,
            options: list[dict[str: int, str: str]] = None
    ):
        """
        Creates a notification for a user based on a template.
        user: User object
        notification_type: Notification type (1 - system, 2 - push, ...)
        template_id: Notification template ID
        options: Options for UserNotificationOption (list of dictionaries {'field_id': int, 'txt': str})
        """
        notification_setting = UserNotificationSetting.objects.filter(
            user=user,
            notification_template_id=template_id
        ).first()

        if not notification_setting or not notification_setting.system_notification:
            return None
        try:
            template = NotificationTemplate.objects.get(id=template_id)
        except NotificationTemplate.DoesNotExist:
            raise ValueError(f'Notification template with ID {template_id} does not exist.')

        with transaction.atomic():
            notification = UserNotification.objects.create(
                user=user,
                notification_template=template,
                notification_type=notification_type,
                status=0,
            )

            if options:
                for option in options:
                    UserNotificationOption.objects.create(
                        user_notification=notification,
                        field_id=option.get('field_id'),
                        txt=option.get('txt'),
                    )

        return notification
