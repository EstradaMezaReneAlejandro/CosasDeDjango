from django.shortcuts import render, redirect
from .models import Estadio
from .forms import EstadioForm
# Create your views here.

def estadio_lista(request):
    estadio = Estadio.objects.all()
    context = {'estadio':estadio}
    return render(request, 'estadios/estadio_lista.html', context)

def estadio_form(request, id=0):
    if request.method == 'GET':
        if id == 0:
            form = EstadioForm()
        else:
            estadio = Estadio.objects.get(pk=id)
            form = EstadioForm(instance = estadio)
        return render(request, 'estadios/estadio_form.html', {'form':form})
    else:
        if id == 0:
            form = EstadioForm(request.POST)
        else:
            estadio = Estadio.objects.get(pk=id)
            form = EstadioForm(request.POST, instance = estadio)
        if form.is_valid():
            form.save()
        return redirect('/estadios/lista')

def estadio_borrar(request, id):
    estadio = Estadio.objects.get(pk=id)
    estadio.delete()
    return redirect('/estadios/lista') 
