from django import forms
from .models import Equipo

class EquipoForm(forms.ModelForm):
    class Meta:
        model = Equipo
        fields = '__all__'
        labels = {
            'nombre': 'Nombre del equipo',
        }