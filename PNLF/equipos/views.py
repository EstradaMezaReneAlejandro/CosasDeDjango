from django.shortcuts import render, redirect
from .models import Equipo
from .forms import EquipoForm
# Create your views here.

def equipo_lista(request):
    equipo = Equipo.objects.all()
    context = {'equipo':equipo}
    return render(request, 'equipos/equipo_lista.html', context)

def equipo_form(request, id=0):
    if request.method == 'GET':
        if id == 0:
            form = EquipoForm()
        else:
            equipo = Equipo.objects.get(pk=id)
            form = EquipoForm(instance = equipo)
        return render(request, 'equipos/equipo_form.html', {'form':form})
    else:
        if id == 0:
            form = EquipoForm(request.POST)
        else:
            equipo = Equipo.objects.get(pk=id)
            form = EquipoForm(request.POST, instance = equipo)
        if form.is_valid():
            form.save()
        return redirect('/equipos/lista')

def equipo_borrar(request, id):
    equipo = Equipo.objects.get(pk=id)
    equipo.delete()
    return redirect('/equipos/lista') 
