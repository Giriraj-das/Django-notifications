from rest_framework.authentication import BasicAuthentication
from django.utils.translation import gettext_lazy as _
from rest_framework.exceptions import AuthenticationFailed

from user.models import User


class EmailBasicAuthentication(BasicAuthentication):
    def authenticate_credentials(self, userid, password, request=None):
        """
        Переопределяем метод для проверки email вместо username.
        """
        try:
            user = User.objects.get(email=userid)
        except User.DoesNotExist:
            raise AuthenticationFailed(_('Invalid email or password.'))

        if not user.check_password(password):
            raise AuthenticationFailed(_('Invalid email or password.'))

        if not user.active:
            raise AuthenticationFailed(_('User account is disabled.'))

        return user, None
