from django import forms
from .models import Jugador

class JugadorForm(forms.ModelForm):
    class Meta:
        model = Jugador
        fields = '__all__'
        labels = {
            'nombre': 'Nombre del jugador',
            'posicion': 'Posición',
        }

    def __init__(self, *args, **kwargs):
        super(JugadorForm, self).__init__(*args, **kwargs)
        self.fields['equipo'].empty_label = 'Seleccionar equipo'