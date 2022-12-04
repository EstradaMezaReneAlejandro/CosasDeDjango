from .models import Proyecto
from rest_framework import viewsets, permissions
from .serializers import ProyectoSerializer

class ProyectoViewSet(viewsets.ModelViewSet):
    queryset = Proyecto.objects.all()
    permission_clsses = [permissions.AllowAny]
    serializer_class = ProyectoSerializer