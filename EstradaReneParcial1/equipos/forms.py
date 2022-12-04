from django.forms import ModelForm
from .models import Equipo


class RegistrarEquipoForm(ModelForm):
    class Meta:
        model = Equipo
        fields = '__all__'