from django.urls import path 
from . import views

app_name = 'estadios'
urlpatterns = [ 
    path('Lista-Estadios/', views.ListaEstadios, name='Lista-Estadios'),
    path('Registrar-Estadio/', views.RegistrarEstadio, name='Registrar-Estadio'),
    path('Editar-Estadio/', views.EditarEstadio, name='Editar-Estadio'),
    path('Borrar-Estadio/', views.BorrarEstadio, name='Borrar-Estadio'),
]