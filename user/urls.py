from django.urls import path

from user.views import VacancyListView

urlpatterns = [
    path('users/', VacancyListView.as_view(), name='users'),
]
