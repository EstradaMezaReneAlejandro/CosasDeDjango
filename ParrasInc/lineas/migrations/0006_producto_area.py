# Generated by Django 4.1 on 2022-10-21 11:32

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('lineas', '0005_producto_nopiezas'),
    ]

    operations = [
        migrations.AddField(
            model_name='producto',
            name='area',
            field=models.CharField(blank=True, max_length=50, null=True),
        ),
    ]