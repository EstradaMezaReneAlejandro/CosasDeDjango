from django.forms import ModelForm
from .models import Estadio


class RegistrarEstadioForm(ModelForm):
    class Meta:
        model = Estadio
        fields = '__all__'