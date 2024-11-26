from django import forms
from django.contrib.auth import password_validation
from django.contrib.auth.forms import UserCreationForm, UserChangeForm, PasswordResetForm, SetPasswordForm

from user.models import User


class CustomUserCreationForm(UserCreationForm):

    class Meta:
        model = User
        fields = ('email',)


class CustomUserChangeForm(UserChangeForm):

    class Meta:
        model = User
        fields = ('email',)


class CustomPasswordResetForm(PasswordResetForm):
    email = forms.EmailField(
        label='Email',
        max_length=254,
        widget=forms.EmailInput(
            attrs={'class': 'form-control',
                   'id': 'floatingInput',
                   'placeholder': 'Your account Email',
                   "autocomplete": "email"}
        )
    )


class CustomSetPasswordForm(SetPasswordForm):
    error_messages = {"password_mismatch": "Пароли не совпадают"}
    new_password1 = forms.CharField(
        label='New password',
        widget=forms.PasswordInput(
            attrs={'class': 'form-control',
                   'id': 'floatingPassword1',
                   'placeholder': 'Enter new password',
                   "autocomplete": "new-password"}
        ),
        strip=False,
        help_text=password_validation.password_validators_help_text_html(),
    )
    new_password2 = forms.CharField(
        label='Confirm new password',
        strip=False,
        widget=forms.PasswordInput(
            attrs={'class': 'form-control',
                   'id': 'floatingPassword2',
                   'placeholder': 'Confirm new password',
                   "autocomplete": "new-password"}
        ),
    )
