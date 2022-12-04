from django.db import models
from equipos.models import Equipo
# Create your models here.

class Jugador(models.Model):
    equipo = models.ForeignKey(Equipo, on_delete=models.CASCADE)
    nombre = models.CharField(max_length=100)
    nacionalidad = models.CharField(max_length=50)
    posicion = models.CharField(max_length=50)
    edad = models.IntegerField()

    def __str__(self):
        return self.nombre