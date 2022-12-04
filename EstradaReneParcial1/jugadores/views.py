from django.shortcuts import render, redirect
from .models import Jugador
from .forms import RegistrarJugadorForm

# Create your views here.

def ListaJugadores(request):
    jugador = Jugador.objects.all()
    context = {
        'jugador':jugador
    }
    return render(request, 'jugadores/ListaJugadores.html', context)


def RegistrarJugador(request):
    form = RegistrarJugadorForm()
    context = {
        'form': form
    }
    if request.method == 'POST':
        form = RegistrarJugadorForm(request.POST)
        if form.is_valid():
            try:  
                form.save()  
                return redirect('http://127.0.0.1:8000/Jugadores/Lista-Jugadores/')  
            except:  
                pass  
    else:  
        form = RegistrarJugadorForm()  
    return render(request, 'jugadores/RegistrarJugador.html', context)


def EditarJugador(request, id):
    jugador = Jugador.objects.get(id=id)  
    form = RegistrarJugadorForm(request.POST, instance = jugador)  
    if form.is_valid():  
        form.save()  
        return redirect("/Lista-Jugadores")   
    return render(request, 'jugadores/EditarJugador.html', {'form':form})


def BorrarJugador(request, id):
    jugador = Jugador.objects.get(id=id)  
    jugador.delete()  
    return redirect("/Lista-Jugadores")  