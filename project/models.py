from django.contrib.contenttypes.fields import GenericForeignKey, GenericRelation
from django.contrib.contenttypes.models import ContentType
from django.db import models


class Country(models.Model):
    id = models.AutoField(primary_key=True, verbose_name='ID')
    name = models.CharField(max_length=25, null=True, blank=True)
    code = models.CharField(max_length=5, null=True, blank=True)
    code_exp = models.CharField(max_length=5, null=True, blank=True)

    class Meta:
        db_table = 'country'

    def __str__(self):
        return self.name


class Language(models.Model):
    id = models.AutoField(primary_key=True, verbose_name='ID')
    name = models.CharField(max_length=32, null=True, blank=True)
    title = models.CharField(max_length=32, null=True, blank=True)

    class Meta:
        db_table = 'language'

    def __str__(self):
        return self.name


class NotificationCategory(models.Model):
    id = models.AutoField(primary_key=True, verbose_name='ID')
    name = models.CharField(max_length=32, null=True, blank=True)
    title = models.CharField(max_length=32, null=True, blank=True)

    class Meta:
        db_table = 'notification_category'

    def __str__(self):
        return self.name


class NotificationTemplate(models.Model):
    id = models.AutoField(primary_key=True, verbose_name='ID')
    notification_category = models.ForeignKey(
        'NotificationCategory',
        related_name='notification_templates',
        null=True,
        blank=True,
        on_delete=models.CASCADE,
    )
    name = models.CharField(max_length=32, null=True, blank=True)
    txt = models.CharField(max_length=255, null=True, blank=True)
    translations = GenericRelation('TranslationString')

    class Meta:
        db_table = 'notification_template'

    def __str__(self):
        return self.name


class Project(models.Model):
    id = models.AutoField(primary_key=True, verbose_name='ID')
    user = models.ForeignKey(
        'user.User',
        related_name='projects',
        null=True,
        blank=True,
        on_delete=models.CASCADE,
    )
    name = models.CharField(max_length=510, null=True, blank=True)
    address = models.CharField(max_length=510, null=True, blank=True)
    started = models.DateTimeField(auto_now_add=True, blank=True)
    lat = models.FloatField(default=0)
    lng = models.FloatField(default=0)
    country = models.ForeignKey('Country', related_name='projects', on_delete=models.CASCADE)
    archived = models.BooleanField(default=False)

    class Meta:
        db_table = 'project'

    def __str__(self):
        return self.name


FIELD_CHOICES = [
    ('name', 1),
    ('title', 2),
    ('description', 3),
    ('text', 4),
    ('question', 5),
    ('answer', 6),
    ('additional', 7),
]


class TranslationString(models.Model):
    id = models.AutoField(primary_key=True, verbose_name='ID')
    content_type = models.ForeignKey(
        ContentType,
        null=True,
        blank=True,
        on_delete=models.DO_NOTHING,
    )
    object_id = models.IntegerField(null=True, blank=True)
    related_item = GenericForeignKey('content_type', 'object_id')
    translation_field_id = models.IntegerField(
        choices=FIELD_CHOICES,
        default=1,
    )
    language = models.ForeignKey(
        'Language',
        related_name='languages',
        null=True,
        blank=True,
        on_delete=models.DO_NOTHING,
    )
    text = models.CharField(max_length=255, null=True, blank=True)

    class Meta:
        db_table = 'translation_string'
        unique_together = ('content_type', 'object_id', 'translation_field_id', 'language')
        indexes = [
            models.Index(fields=['object_id'], name='idx_cxid'),
            models.Index(fields=['content_type'], name='idx_content_type_id'),
            models.Index(fields=['language'], name='idx_language_id')
        ]

    def __str__(self):
        return self.language.name


class UserNotification(models.Model):
    id = models.AutoField(primary_key=True, verbose_name='ID')
    user = models.ForeignKey(
        'user.User',
        on_delete=models.CASCADE,
        related_name='notifications',
        null=True,
        blank=True
    )
    notification_template = models.ForeignKey(
        'NotificationTemplate',
        on_delete=models.CASCADE,
        related_name='user_notifications',
        null=True,
        blank=True
    )
    notification_type = models.PositiveSmallIntegerField(default=1)
    status = models.PositiveSmallIntegerField(default=0)
    created = models.DateTimeField(auto_now_add=True, null=True, blank=True)

    class Meta:
        db_table = 'user_notification'
        indexes = [
            models.Index(fields=['user'], name='idx_un_uid'),
            models.Index(fields=['notification_template'], name='idx_un_nt_id'),
        ]

    def __str__(self):
        return self.user.email


class UserNotificationOption(models.Model):
    id = models.AutoField(primary_key=True, verbose_name='ID')
    user_notification = models.ForeignKey(
        'UserNotification',
        on_delete=models.CASCADE,
        related_name='options',
        null=True,
        blank=True
    )
    field_id = models.PositiveSmallIntegerField(null=True, blank=True)
    txt = models.CharField(max_length=32, null=True, blank=True)

    class Meta:
        db_table = 'user_notification_option'
        indexes = [
            models.Index(fields=['user_notification'], name='idx_user_notification_id'),
        ]

    def __str__(self):
        return self.txt


class UserNotificationSetting(models.Model):
    id = models.AutoField(primary_key=True, verbose_name='ID')
    user = models.ForeignKey(
        'user.User',
        on_delete=models.CASCADE,
        related_name='notification_settings',
        null=True,
        blank=True
    )
    notification_template = models.ForeignKey(
        'NotificationTemplate',
        on_delete=models.CASCADE,
        related_name='notification_settings',
        null=True,
        blank=True
    )
    system_notification = models.BooleanField(default=True)
    push_notification = models.BooleanField(default=True)

    class Meta:
        db_table = 'user_notification_setting'
        indexes = [
            models.Index(fields=['user'], name='idx_user_id'),
            models.Index(fields=['notification_template'], name='idx_uns_nt_id'),
        ]

    def __str__(self):
        return self.user.email
