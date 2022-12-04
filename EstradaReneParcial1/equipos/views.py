from django.shortcuts import render
from .models import Equipo
from .forms import RegistrarEquipoForm

# Create your views here.

def ListaEquipos(request):
    equipo = Equipo.objects.all()
    context = {
        'equipo':equipo
    }
    return render(request, 'equipos/ListaEquipos.html', context)


def RegistrarEquipo(request):
    form = RegistrarEquipoForm()
    if request.method == 'POST':
        form = RegistrarEquipoForm(request.POST)
        if form.is_valid():
            form.save()
    context = {
        'form': form
    }
    return render(request, 'equipos/RegistrarEquipo.html', context)


def EditarEquipo(request):
    return render(request, 'equipos/EditarEquipo.html')


def BorrarEquipo(request):
    return render(request, 'equipos/BorrarEquipo.html')