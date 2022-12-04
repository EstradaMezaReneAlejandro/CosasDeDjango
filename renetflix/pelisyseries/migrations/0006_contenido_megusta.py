# Generated by Django 4.1 on 2022-11-05 03:46

from django.conf import settings
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
        ('pelisyseries', '0005_contenido_delete_pelicula_delete_serie'),
    ]

    operations = [
        migrations.AddField(
            model_name='contenido',
            name='meGusta',
            field=models.ManyToManyField(related_name='Me_Gusta', to=settings.AUTH_USER_MODEL),
        ),
    ]
