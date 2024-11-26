# Generated by Django 5.1.3 on 2024-11-13 15:11

import django.db.models.deletion
from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Country',
            fields=[
                ('id', models.AutoField(primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(blank=True, max_length=25, null=True)),
                ('code', models.CharField(blank=True, max_length=5, null=True)),
                ('code_exp', models.CharField(blank=True, max_length=5, null=True)),
            ],
            options={
                'db_table': 'country',
            },
        ),
        migrations.CreateModel(
            name='Language',
            fields=[
                ('id', models.AutoField(primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(blank=True, max_length=32, null=True)),
                ('title', models.CharField(blank=True, max_length=32, null=True)),
            ],
            options={
                'db_table': 'language',
            },
        ),
        migrations.CreateModel(
            name='NotificationCategory',
            fields=[
                ('id', models.AutoField(primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(blank=True, max_length=32, null=True)),
                ('title', models.CharField(blank=True, max_length=32, null=True)),
            ],
            options={
                'db_table': 'notification_category',
            },
        ),
        migrations.CreateModel(
            name='TranslationString',
            fields=[
                ('id', models.AutoField(primary_key=True, serialize=False, verbose_name='ID')),
                ('object_id', models.IntegerField(blank=True, null=True)),
                ('translation_field_id', models.IntegerField(blank=True, null=True)),
                ('text', models.CharField(blank=True, max_length=255, null=True)),
            ],
            options={
                'db_table': 'translation_string',
            },
        ),
        migrations.CreateModel(
            name='UserNotification',
            fields=[
                ('id', models.AutoField(primary_key=True, serialize=False, verbose_name='ID')),
                ('notification_type', models.PositiveSmallIntegerField(default=1)),
                ('status', models.PositiveSmallIntegerField(default=0)),
                ('created', models.DateTimeField(auto_now_add=True, null=True)),
            ],
            options={
                'db_table': 'user_notification',
            },
        ),
        migrations.CreateModel(
            name='UserNotificationOption',
            fields=[
                ('id', models.AutoField(primary_key=True, serialize=False, verbose_name='ID')),
                ('field_id', models.PositiveSmallIntegerField(blank=True, null=True)),
                ('txt', models.CharField(blank=True, max_length=32, null=True)),
            ],
            options={
                'db_table': 'user_notification_option',
            },
        ),
        migrations.CreateModel(
            name='UserNotificationSetting',
            fields=[
                ('id', models.AutoField(primary_key=True, serialize=False, verbose_name='ID')),
                ('system_notification', models.BooleanField(default=True)),
                ('push_notification', models.BooleanField(default=True)),
            ],
            options={
                'db_table': 'user_notification_setting',
            },
        ),
        migrations.CreateModel(
            name='NotificationTemplate',
            fields=[
                ('id', models.AutoField(primary_key=True, serialize=False, verbose_name='ID')),
                ('txt', models.CharField(blank=True, max_length=255, null=True)),
                ('notification_category', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, related_name='notification_templates', to='project.notificationcategory')),
            ],
            options={
                'db_table': 'notification_template',
            },
        ),
        migrations.CreateModel(
            name='Project',
            fields=[
                ('id', models.AutoField(primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(blank=True, max_length=510, null=True)),
                ('address', models.CharField(blank=True, max_length=510, null=True)),
                ('started', models.DateTimeField(auto_now_add=True)),
                ('lat', models.FloatField(default=0)),
                ('lng', models.FloatField(default=0)),
                ('archived', models.BooleanField(default=False)),
                ('country', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='projects', to='project.country')),
            ],
            options={
                'db_table': 'project',
            },
        ),
    ]
