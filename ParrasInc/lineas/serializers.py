from rest_framework import serializers
from .models import *

class OrdenSerializer(serializers.ModelSerializer):
    class Meta:
        model = Orden
        fields = ['cedente', 'jefeLinea', 'noPiezas', 'producto', 'linea', 'fecha', 'status']


class EmpleadoSerializer(serializers.ModelSerializer):
    class Meta:
        model = Empleado
        fields = ['nombre', 'area', 'entrada', 'salida', 'horasExtra']


class ProductoSerializer(serializers.ModelSerializer):
    class Meta:
        model = Producto
        fields = '__all__'


class LineaProduccionSerializer(serializers.ModelSerializer):
    class Meta:
        model = LineaProduccion
        fields = '__all__'




