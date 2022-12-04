from django.urls import path
from . import views 

app_name = 'equipos'
urlpatterns = [
    path('Lista-Equipos/', views.ListaEquipos, name='Lista-Equipos'),
    path('Editar-Equipo/', views.EditarEquipo, name='Editar-Equipo'),
    path('Registrar-Equipo/', views.RegistrarEquipo, name='Registrar-Equipo'),
    path('Borrar-Equipo/', views.BorrarEquipo, name='Borrar-Equipo'),
]