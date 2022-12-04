from django.shortcuts import render, redirect, get_object_or_404
from .models import Jugador
from .forms import JugadorForm
# Create your views here.

def jugador_lista(request):
    jugador = Jugador.objects.all()
    context = {'jugador':jugador}
    return render(request, 'jugadores/jugador_lista.html', context)

def jugador_form(request, id=0):
    if request.method == 'GET':
        if id == 0:
            form = JugadorForm()
        else:
            jugador = Jugador.objects.get(pk=id)
            form = JugadorForm(instance = jugador)
        return render(request, 'jugadores/jugador_form.html', {'form':form})
    else:
        if id == 0:
            form = JugadorForm(request.POST)
        else:
            jugador = Jugador.objects.get(pk=id)
            form = JugadorForm(request.POST, instance = jugador)
        if form.is_valid():
            form.save()
        return redirect('/jugadores/lista')

def jugador_borrar(request, id):
    jugador = Jugador.objects.get(pk=id)
    jugador.delete()        
    return redirect('/jugadores/lista')
