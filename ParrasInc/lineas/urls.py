from django.urls import include, path
from rest_framework import routers

from lineas.models import Empleado
from . import views

router = routers.DefaultRouter()
router.register(r'empleado', views.EmpleadoViewSet)
router.register(r'orden', views.OrdenViewSet)
router.register(r'producto', views.ProductoViewSet)
router.register(r'linea-produccion', views.LineaProduccionViewSet)

urlpatterns = [ 
    path('api/', include(router.urls)),
    path('empleados-area-automotriz/', views.EmpleadosAreaAutomotriz, name='empleados-area-automotriz'),
    path('empleados-area-microtecnologia/', views.EmpleadosAreaMicrotecnologia, name='empleados-area-microtecnologia'),
    path('entradas-salidas/', views.EntradasSalidas, name='entradas-salidas'),
    path('horas-extra/', views.HorasExtra, name='horas-extra'),
    path('ordenes/', views.OrdenesAbiertasCerradas, name='ordenes'),
    path('ordenes-dia/', views.OrdenesPorDia, name='ordenes-dia'),
    path('productos-dia/', views.ProductosPorDia, name='productos-dia'),
    path('ordenes-semana/', views.OrdenesPorSemana, name='ordenes-semana'),
    path('productos-semana/', views.ProductosPorSemana, name='productos-semana'),
    path('productos-auto/', views.ProductosAuto, name='productos-auto'),
    path('productos-micro/', views.ProductosMicro, name='productos-micro'),
    path('piezas-producto/', views.piezasProductos, name='piezas-producto'),
    path('calidad-producto/', views.CalidadProductos, name='calidad-producto'),
    path("register/", views.register_request, name="register"),
    path("login/", views.login_request, name="login"), 
    path("logout/", views.logout_request, name="logout"),  
    path("", views.home, name="home"), 
]