# Generated by Django 4.1 on 2022-10-20 09:11

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('lineas', '0002_rename_procudto_lineaproduccion_producto'),
    ]

    operations = [
        migrations.AlterField(
            model_name='empleado',
            name='salida',
            field=models.TimeField(),
        ),
    ]
