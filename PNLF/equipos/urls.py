from django.urls import path
from . import views

urlpatterns = [ 
    path('', views.equipo_form, name='registrar-equipo'),
    path('<int:id>/', views.equipo_form, name='actualizar-equipo'),
    path('lista/', views.equipo_lista, name='lista-equipo'),
    path('borrar/<int:id>/', views.equipo_borrar, name='borrar-equipo'),
]
