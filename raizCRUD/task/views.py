from django.shortcuts import get_object_or_404, render, redirect
from django.http import HttpResponse
from django.contrib.auth.forms import UserCreationForm, AuthenticationForm
from django.contrib.auth.models import User
from django.contrib.auth import login, logout, authenticate
from django.db import IntegrityError
from .forms import TaskForm
from .models import Task
from django.utils import timezone
from django.contrib.auth. decorators import login_required

def home(request):
    return render(request, 'home.html')

def signup(request):
    if request.method =='GET':
        return render(request, 'signup.html', {'form':UserCreationForm})
    else:
        try:
            if request.POST['password1'] == request.POST['password2']:
                user = User.objects.create_user(username=request.POST['username'], password=request.POST['password1'])
                user.save()
                login(request, user)
                return redirect('tasks')
        except IntegrityError:
            return render(request, 'signup.html', {'form':UserCreationForm, 'error': 'Usuario ya existente'})    
        return render(request, 'signup.html', {'form':UserCreationForm, 'error': 'La contrasena no coincide'})

@login_required
def tasks(request):
    task = Task.objects.filter(user=request.user, datecompleted__isnull = True)
    return render(request, 'task.html', {'task': task}); 

@login_required
def tasks_done(request):
    task = Task.objects.filter(user=request.user, datecompleted__isnull = False).order_by('-datecompleted')
    return render(request, 'tasks_done.html', {'task': task}); 

@login_required
def signout(request):
    logout(request)
    return redirect('home')

def signin(request):
    if request.method == 'GET':
        return render(request, 'signin.html', {'form': AuthenticationForm})
    else:
        user = authenticate(request, username=request.POST['username'], password=request.POST['password'])
        if user is None:
            return render(request, 'signin.html', {'form': AuthenticationForm, 'error': 'Usuario o contrasena incorrectas'})
        else:
            login(request, user)
            return redirect('tasks')    

@login_required
def create_task(request):
    if request.method == 'GET':
        return render(request, 'create_task.html', {'form': TaskForm})
    else:
        try:
            form = TaskForm(request.POST)
            new_task = form.save(commit=False)
            new_task.user = request.user
            new_task.save()
            return redirect('tasks')
        except ValueError:
            return render(request, 'create_task.html', {'form': TaskForm, 'error': 'Ingrese un valor valido, por favor'})

@login_required
def task_detail(request, id):
    if request.method == 'GET':
        task = get_object_or_404(Task, pk=id, user=request.user)
        form = TaskForm(instance=task)
        return render(request, 'task_detail.html', {'task':task, 'form':form})
    else:
        try:
            task = get_object_or_404(Task, pk=id, user=request.user)
            form = TaskForm(request.POST, instance=task)
            form.save()
            return redirect('tasks')
        except ValueError:
            return render(request, 'task_detail.html', {'task':task, 'form':form, 'error':'Error actualizando tarea'})

@login_required
def task_completed(request, id):
    task = get_object_or_404(Task, pk=id, user=request.user)
    if request.method == 'POST':
        task.datecompleted = timezone.now()
        task.save()
        return redirect('tasks')

@login_required
def task_deleted(request, id):
    task = get_object_or_404(Task, pk=id, user=request.user)
    if request.method == 'POST':
        task.delete()
        return redirect('tasks')
