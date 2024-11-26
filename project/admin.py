from django.contrib import admin

from project.models import (
    Country,
    Language,
    NotificationCategory,
    NotificationTemplate,
    Project,
    TranslationString,
    UserNotification,
    UserNotificationOption,
    UserNotificationSetting
)

admin.site.register(Country)
admin.site.register(Language)
admin.site.register(NotificationCategory)
admin.site.register(NotificationTemplate)
admin.site.register(Project)
admin.site.register(TranslationString)
admin.site.register(UserNotification)
admin.site.register(UserNotificationOption)
admin.site.register(UserNotificationSetting)
