from pyexpat import model
from django.db import models
from equipos.models import Equipo
# Create your models here.
class Estadio(models.Model):
    equipo = models.ForeignKey(Equipo, on_delete=models.CASCADE)
    nombre = models.CharField(max_length=100)
    capacidad = models.IntegerField()
    
    def __str__(self):
        return self.nombre