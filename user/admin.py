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
