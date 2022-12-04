from tkinter import CASCADE
from django.db import models
from equipos.models import Equipo
# Create your models here.

class Estadio(models.Model):
    nombre = models.CharField(max_length=50, verbose_name='Nombre del estadio: ')
    capacidad = models.IntegerField(verbose_name='Capacidad: ')
    ciudad = models.CharField(max_length=100, verbose_name='Ciudad: ')
    pais = models.CharField(max_length=100, verbose_name='País: ')
    equipo = models.ForeignKey(Equipo, on_delete=models.CASCADE, verbose_name='Equipo: ')

    def __str__(self):
        return self.nombre