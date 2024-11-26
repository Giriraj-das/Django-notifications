from rest_framework import serializers

from user.models import User


class UserListSerializer(serializers.ModelSerializer):

    class Meta:
        model = User
        fields = ('id', 'first_name', 'last_name', 'email', 'role_id', 'active', 'verified', 'language', 'last_login')
