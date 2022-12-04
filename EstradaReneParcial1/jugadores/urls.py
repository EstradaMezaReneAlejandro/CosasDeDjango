from django.urls import path
from . import views

app_name = 'jugadores'
urlpatterns = [
    path('Lista-Jugadores/', views.ListaJugadores, name='Lista-Jugadores'),
    path('Registrar-Jugador/', views.RegistrarJugador, name='Registrar-Jugador'),
    path('Editar-Jugador/<int:id>', views.EditarJugador, name='Editar-Jugador'),
    path('Borrar-Jugador/<int:id>', views.BorrarJugador, name='Borrar-Jugador'),
]