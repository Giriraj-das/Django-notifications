from django.contrib import admin
from user.models import User
from django.contrib.auth.admin import UserAdmin as BaseUserAdmin


@admin.register(User)
class UserAdmin(BaseUserAdmin):
    list_display = ('email', 'first_name', 'last_name')
    search_fields = ('email', 'first_name', 'last_name')
    list_filter = ('active',)
    ordering = ('last_name',)
    fieldsets = (
        (
            None,
            {'fields': ('password',)}
        ),
        (
            'Personal info',
            {'fields': ('first_name', 'last_name', 'email')}
        ),
        (
            'Permissions',
            {'fields': ('active', 'verified')}
        ),
        (
            'Others',
            {'fields': ('role_id', 'language')}
        )
    )
# 1. Аутентификация базовая

# 2. Написать сервис, который будет создавать нотификации.
# Скрипт в котором лежит класс, и этот класс обрабатывает нотификации. Смотрит Notification_settings,
# если нотификации включены, создавать их.

# 3. Написать get endpoint, который отдает список user_notification по конкретному пользователю.
# Фильтр по notification_type(1 - системная, или 2 - push, или не указываем, чтобы отдать все нотификации),
# status(0 - не прочитана, 1 - прочитана) и notification_category.
# Выводя список, сразу подставить user_notification_option и translation_string.
# То есть юзеру приходит нотификация на том языке, который у него выбран.

# 4. Изменять статус на "прочитано", put endpoint,
# принимает массив айди, по этим id меняет в user_notification status на 1.
