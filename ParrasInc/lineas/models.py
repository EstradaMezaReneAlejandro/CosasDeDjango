from django.db import models

# Create your models here.

class Area(models.Model):
    area = models.CharField(max_length=50)
    jefeCalidad1 = models.CharField(max_length=150)
    jefeCalidad2 = models.CharField(max_length=150)
    jefeCalidad3 = models.CharField(max_length=150)

    def __str__(self):
        return self.area 


class Producto(models.Model):
    nombre = models.CharField(max_length=255)
    pruebaCalidad = models.BooleanField()
    noPiezas = models.IntegerField(null=True, blank=True)
    area = models.CharField(max_length=50, null=True, blank=True)
    fecha = models.DateField(auto_now_add=True, null=True, blank=True)

    def __str__(self):
        return self.nombre


class LineaProduccion(models.Model):
    jefeLinea1 = models.CharField(max_length=150)
    jefeLinea2 = models.CharField(max_length=150)
    jefeLinea3 = models.CharField(max_length=150)
    area = models.ForeignKey(Area, on_delete=models.CASCADE)
    producto = models.ForeignKey(Producto, on_delete=models.CASCADE)

    def __str__(self):
        return f"Linea de produccion - {self.area}"


class Orden(models.Model):
    cedente = models.CharField(max_length=150)
    jefeLinea = models.CharField(max_length=150)
    noPiezas = models.IntegerField()
    status = models.BooleanField(default=False) 
    producto = models.ForeignKey(Producto, on_delete=models.CASCADE)
    linea = models.ForeignKey(LineaProduccion, on_delete=models.CASCADE)
    fecha = models.DateField(auto_now_add=True)
    actualizacion = models.DateTimeField(auto_now=True)


class Empleado(models.Model):
    nombre = models.CharField(max_length=150)
    area = models.CharField(max_length=50, null=True, blank=True)
    entrada = models.TimeField(auto_now_add=False)
    salida = models.TimeField(auto_now_add=False)
    horasExtra = models.IntegerField()

    def __str__(self):
        return f"Nombre: {self.nombre} - {self.area}"






    
