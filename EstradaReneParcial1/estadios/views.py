from django.shortcuts import render
from .models import Estadio
from .forms import RegistrarEstadioForm
# Create your views here.

def ListaEstadios(request):
    estadio = Estadio.objects.all()
    context = {
        'estadio':estadio
    }
    return render(request, 'estadios/ListaEstadios.html', context)


def RegistrarEstadio(request):
    form = RegistrarEstadioForm()
    if request.method == 'POST':
        form = RegistrarEstadioForm(request.POST)
        if form.is_valid():
            form.save()
    context = {
        'form': form
    }
    return render(request, 'estadios/RegistrarEstadio.html', context)


def EditarEstadio(request):
    return render(request, 'estadios/EditarEstadio.html')


def BorrarEstadio(request):
    return render(request, 'estadios/BorrarEstadio.html')
