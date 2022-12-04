from django.shortcuts import render
from rest_framework.views import APIView
from rest_framework.response import Response
from rest_framework import status, filters 
from rest_framework import viewsets
from .serializers import *
from .models import *
from rest_framework.authentication import TokenAuthentication
from rest_framework.authtoken.views import ObtainAuthToken
from rest_framework.settings import api_settings
from .permissions import *
from rest_framework.permissions import IsAuthenticated

class HellosApiView(APIView):

    serializer_class = HelloSerializer

    def get(self, request, format=None):
        an_apiview=[ 
            'usamos metodos HTTP como funciones',
            'es similar a una vista de django',
            'nos da mayor control sobre la logica de nuestra aplicacion',
            'urls mapeados manualmente',
        ]
        return Response({'massage':'hello', 'an_apiview':an_apiview})

    def post(self, request):
        serializer = self.serializer_class(data=request.data)
        if serializer.is_valid():
            name = serializer.validated_data.get('name')
            message = f"Hello {name}"
            return Response({'messege':message})
        else:
            return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)

    def put(self, request, pk=None):
        """" put es para acutalizar un objeto """
        return Response({'method':'PUT'})

    def patch(self, request, pk=None):
        """" patch actualiza de manera parcial un objeto """
        return Response({'method':'PATCH'})
    
    def delete(self, request, pk=None):
        return Response({'method':'DELETE'})


class HelloViewSet(viewsets.ViewSet):

    serializer_class = HelloSerializer

    def list(self, request):
        a_viewset = [ 
            'usa acciones list, create, retreive, update, partial update',
            'automaticamente mapea a los urls usando rourters',
            'provee mas funcionalidad con menos codigo',
        ]
        return Response({'message':'Hola!', 'a_viewset': a_viewset})

    def create(self, request):
        serializer = self.serializer_class(data=request.data)
        if serializer.is_valid():
            name = serializer.validated_data.get('name')
            message = f"Hola {name}"
            return Response({'message':message})
        else: 
            return Response(serializer.erros, status.HTTP_400_BAD_REQUEST)

    def retrieve(self, request, pk=None):
        """" Obtiene un objeto y su respectivo ID """
        return Response({'http_method':'GET'})
    
    def update(self, request, pk=None):
        return Response({'http_method':'PUT'})
    
    def partial_update(self, request, pk=None):
        return Response({'http_method':'PATCH'})
    
    def delete(self, request, pk=None):
        return Response({'http_method':'DELETE'})


class UserProfileViewSet(viewsets.ModelViewSet):
    serializer_class = UserProfileSerializer
    queryset = UserProfile.objects.all()
    authentication_classes = (TokenAuthentication,)
    permission_classes = (UpdateOwnProfile,)
    filter_backends = (filters.SearchFilter,)
    search_fields = ('name', 'email',)

class UserLoginApiView(ObtainAuthToken):
    renderer_classes = api_settings.DEFAULT_RENDERER_CLASSES


class UserProfileFeedViewSet(viewsets.ModelViewSet):
    """" Maneja el crear, leer y actualizar el feed del perfil """
    authentication_classes=(TokenAuthentication,)
    serializer_class=ProfileFeedItemSerializer
    queryset = ProfileFeedItem.objects.all()
    permission_classes = (UpdateOwnStatus, IsAuthenticated)

    def perform_create(self, serializer):
        serializer.save(user_profile=self.request.user)
