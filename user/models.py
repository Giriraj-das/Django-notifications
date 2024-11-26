from django.contrib.auth.models import AbstractBaseUser, PermissionsMixin
from django.db import models
from django.utils import timezone

from django.utils.translation import gettext_lazy as _

from user.manager import UserManager


class User(AbstractBaseUser, PermissionsMixin):
    id = models.AutoField(primary_key=True, verbose_name='ID')
    first_name = models.CharField(_('first name'), max_length=255, null=True, blank=True)
    last_name = models.CharField(_('last name'), max_length=255, null=True, blank=True)
    email = models.EmailField(_('email address'), max_length=255, unique=True, null=True, blank=True)
    role_id = models.PositiveSmallIntegerField(null=True, blank=True)
    password = models.CharField(max_length=128, null=True, blank=True)
    active = models.BooleanField(default=False)
    verified = models.SmallIntegerField(null=True, blank=True)
    language = models.ForeignKey(
        'project.Language',
        on_delete=models.CASCADE,
        related_name='users',
        default=1
    )
    last_login = models.DateTimeField(_('last login'), blank=True, null=True, default=timezone.now)
    is_staff = models.BooleanField(_('staff status'), default=False)

    USERNAME_FIELD = 'email'
    REQUIRED_FIELDS = []

    objects = UserManager()

    def __str__(self):
        return self.email

    class Meta:
        db_table = 'user'
        indexes = [
            models.Index(fields=['language'], name='idx_user_language_id'),
        ]


class UserRole(models.Model):
    id = models.AutoField(primary_key=True, verbose_name='ID')
    name = models.CharField(max_length=255, null=True, blank=True)
