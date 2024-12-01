from rest_framework import serializers

from project.models import UserNotification


class NotificationSerializer(serializers.ModelSerializer):
    txt = serializers.SerializerMethodField()

    class Meta:
        model = UserNotification
        fields = ['id', 'txt', 'notification_type', 'status', 'created']

    def get_txt(self, obj):
        notification_template = obj.notification_template
        if notification_template and notification_template.translations:
            translation = notification_template.prefetched_translations[0]
            txt = translation.text
        else:
            txt = obj.notification_template.txt

        options_list = [option.txt for option in obj.options.order_by('field_id')]
        try:
            return txt.format(*options_list)
        except IndexError as e:
            return f"No options for template: {e}"
