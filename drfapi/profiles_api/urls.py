from django.urls import path, include
from .views import *
from rest_framework.routers import DefaultRouter

router = DefaultRouter()
router.register('hello-viewset', HelloViewSet, basename='hello-viewset')
router.register('profile', UserProfileViewSet) # no es necesario un 'basename' debido a que se esta utilizando un queryset
router.register('feed', UserProfileFeedViewSet)

urlpatterns = [ 
    path('hello-views/', HellosApiView.as_view()),
    path('login/', UserLoginApiView.as_view()),
    path('', include(router.urls)),
]