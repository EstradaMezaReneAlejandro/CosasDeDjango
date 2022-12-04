from django.db import models

# Create your models here.

class Equipo(models.Model):
    nombre = models.CharField(max_length=200, verbose_name='Nombre del equipo: ')
    fechaCreacion = models.DateField(verbose_name='Fundación: ')
    ciudad = models.CharField(max_length=100, verbose_name='Ciudad: ')
    pais = models.CharField(max_length=100, verbose_name='País: ')
    confederacion = models.CharField(max_length=100, verbose_name='Confederación: ')
    # logo = models.ImageField()
    titulos = models.IntegerField(verbose_name='Títulos: ')

    def __str__(self):
        return self.nombre