from django import forms
from .models import Estadio

class EstadioForm(forms.ModelForm):
    class Meta:
        model = Estadio
        fields = '__all__'
        labels = {
            'nombre': 'Nombre del estadio',
        }

    def __init__(self, *args, **kwargs):
        super(EstadioForm, self).__init__(*args, **kwargs)
        self.fields['equipo'].empty_label = 'Seleccionar equipo'