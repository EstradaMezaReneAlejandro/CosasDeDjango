from django.shortcuts import render, redirect
from rest_framework import viewsets, permissions
from .serializers import *
from .models import *
from .forms import NewUserForm
from django.contrib.auth import login, authenticate, logout
from django.contrib import messages
from django.contrib.auth.forms import AuthenticationForm 
from django.contrib.auth.decorators import login_required
from django.contrib.auth.mixins import LoginRequiredMixin
from datetime import date
from datetime import datetime, timedelta


# Create your views here.

def home(request):
    return render(request, 'lineas/home.html')

def register_request(request):
	if request.method == "POST":
		form = NewUserForm(request.POST)
		if form.is_valid():
			user = form.save()
			login(request, user)
			messages.success(request, "Registro exitoso." )
			return redirect("home")
		messages.error(request, "Registro sin éxito. Datos proporcionados no válidos.")
	form = NewUserForm()
	return render (request=request, template_name="lineas/register.html", context={"register_form":form})

def login_request(request):
	if request.method == "POST":
		form = AuthenticationForm(request, data=request.POST)
		if form.is_valid():
			username = form.cleaned_data.get('username')
			password = form.cleaned_data.get('password')
			user = authenticate(username=username, password=password)
			if user is not None:
				login(request, user)
				messages.info(request, f"Has inciado sesión como {username}.")
				return redirect("home")
			else:
				messages.error(request,"Nombre de usuario o contraseña incorrectos.")
		else:
			messages.error(request,"Nombre de usuario o contraseña incorrectos.")
	form = AuthenticationForm()
	return render(request=request, template_name="lineas/login.html", context={"login_form":form})

def logout_request(request):
    logout(request)
    messages.success(request,("Has cerrado tu sesión."))
    return redirect('home')

class EmpleadoViewSet(LoginRequiredMixin, viewsets.ModelViewSet):
    login_url = '/login/'
    redirect_field_name = 'login'
    queryset = Empleado.objects.all()
    serializer_class = EmpleadoSerializer
    permission_classes = [permissions.IsAuthenticated]

class ProductoViewSet(LoginRequiredMixin, viewsets.ModelViewSet):
    login_url = '/login/'
    redirect_field_name = 'login'
    queryset = Producto.objects.all()
    serializer_class = ProductoSerializer
    permission_classes = [permissions.IsAuthenticated]

class OrdenViewSet(LoginRequiredMixin, viewsets.ModelViewSet):
    login_url = '/login/'
    redirect_field_name = 'login'
    queryset = Orden.objects.all()
    serializer_class = OrdenSerializer
    permission_classes = [permissions.IsAuthenticated]

class LineaProduccionViewSet(LoginRequiredMixin, viewsets.ModelViewSet):
    login_url = '/login/'
    redirect_field_name = 'login'
    queryset = LineaProduccion.objects.all()
    serializer_class = LineaProduccionSerializer
    permission_classes = [permissions.IsAuthenticated]

@login_required(login_url='login')
def EmpleadosAreaAutomotriz(request):
    empleado = Empleado.objects.all()
    context = {'empleado': empleado}
    return render(request, 'lineas/empleadosAreaAutomotriz.html', context)

@login_required(login_url='login')
def EmpleadosAreaMicrotecnologia(request):
    empleado = Empleado.objects.all()
    context = {'empleado': empleado}
    return render(request, 'lineas/empleadosAreaMicrotecnologia.html', context)

@login_required(login_url='login')
def EntradasSalidas(request):
    empleado = Empleado.objects.all()
    context = {'empleado': empleado}
    return render(request, 'lineas/entradassalidas.html', context)

@login_required(login_url='login')
def HorasExtra(request):
    empleado = Empleado.objects.all()
    context = {'empleado': empleado}
    return render(request, 'lineas/horasextra.html', context)

@login_required(login_url='login')
def OrdenesAbiertasCerradas(request):
    orden = Orden.objects.all()
    context = {'orden': orden}
    return render(request, 'lineas/ordenesAbiertasCerradas.html', context)

@login_required(login_url='login')
def OrdenesPorDia(request):
    now = datetime.now()
    orden = Orden.objects.filter(fecha=now)
    context = {'orden': orden}
    return render(request, 'lineas/OrdenesPorDia.html', context)

@login_required(login_url='login')
def ProductosPorDia(request):
    now = datetime.now()
    producto = Producto.objects.filter(fecha=now)
    context = {'producto': producto}
    return render(request, 'lineas/ProductosPorDia.html', context)

@login_required(login_url='login')
def OrdenesPorSemana(request):
    today = date.today()
    monday = today - timedelta(days=today.weekday())
    orden = Orden.objects.filter(fecha__gte=monday)
    context = {'orden': orden}
    return render(request, 'lineas/OrdenesPorSemana.html', context)

@login_required(login_url='login')
def ProductosPorSemana(request):
    today = date.today()
    monday = today - timedelta(days=today.weekday())
    producto = Producto.objects.filter(fecha__gte=monday)
    context = {'producto': producto}
    return render(request, 'lineas/ProductosPorSemana.html', context)

@login_required(login_url='login')
def ProductosAuto(request):
    producto = Producto.objects.filter(area='Automotriz')
    context = {'producto': producto}
    return render(request, 'lineas/ProductosAuto.html', context)

@login_required(login_url='login')
def ProductosMicro(request):
    producto = Producto.objects.filter(area='Microtecnologia')
    context = {'producto': producto}
    return render(request, 'lineas/ProductosMicro.html', context)

@login_required(login_url='login')
def piezasProductos(request):
    producto = Producto.objects.all()
    context = {'producto': producto}
    return render(request, 'lineas/piezasProducto.html', context)

@login_required(login_url='login')
def CalidadProductos(request):
    producto = Producto.objects.all()
    context = {'producto': producto}
    return render(request, 'lineas/CalidadProductos.html', context)
