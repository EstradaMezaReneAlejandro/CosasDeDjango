# Generated by Django 4.1 on 2022-10-21 07:30

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('lineas', '0004_alter_empleado_area'),
    ]

    operations = [
        migrations.AddField(
            model_name='producto',
            name='noPiezas',
            field=models.IntegerField(blank=True, null=True),
        ),
    ]
