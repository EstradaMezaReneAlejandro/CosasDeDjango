# Generated by Django 4.1 on 2022-09-19 04:50

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Equipo',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('nombre', models.CharField(max_length=50)),
                ('fundacion', models.IntegerField()),
                ('ciudad', models.CharField(max_length=50)),
                ('pais', models.CharField(max_length=50)),
                ('confederacion', models.CharField(max_length=100)),
            ],
        ),
    ]
