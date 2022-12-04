from django.db import models

# Create your models here.
class Equipo(models.Model):
    nombre = models.CharField(max_length=50)
    fundacion = models.IntegerField()
    ciudad = models.CharField(max_length=50)
    pais = models.CharField(max_length=50)
    confederacion = models.CharField(max_length=100)

    def __str__(self):
        return self.nombre