from django.urls import path

from . import views

urlpatterns = [ 
    path('', views.jugador_form, name='registrar-jugador'),
    path('<int:id>/', views.jugador_form, name='actualizar-jugador'),
    path('lista/', views.jugador_lista, name='lista-jugador'),
    path('borrar/<int:id>/', views.jugador_borrar, name='borrar-jugador'),
]
