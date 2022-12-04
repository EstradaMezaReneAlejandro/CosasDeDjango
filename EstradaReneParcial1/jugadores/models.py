from django.db import models
from equipos.models import Equipo
# Create your models here.

class Jugador(models.Model):
    nombre = models.CharField(max_length=150, verbose_name='Nombre')
    nacionalidad = models.CharField(max_length=100, verbose_name='Nacionalidad')
    posicion = models.CharField(max_length=30, verbose_name='Posición')
    edad = models.IntegerField(verbose_name='Edad')
    estatura = models.DecimalField(decimal_places=2, max_digits=3, verbose_name='Estatura')
    fechaNacimiento = models.DateField(verbose_name='Fecha de nacimiento')
    equipo = models.ForeignKey(Equipo, on_delete=models.CASCADE, verbose_name='Equipo')

    def __str__(self):
        return self.nombre

