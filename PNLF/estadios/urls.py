from django.urls import path
from . import views

urlpatterns = [ 
    path('', views.estadio_form, name='registrar-estadio'),
    path('<int:id>/', views.estadio_form, name='actualizar-estadio'),
    path('lista/', views.estadio_lista, name='lista-estadio'),
    path('borrar/<int:id>/', views.estadio_borrar, name='borrar-estadio'),
]