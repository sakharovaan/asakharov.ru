# -*- coding: utf-8 -*-
# Generated by Django 1.11.4 on 2018-04-09 18:57
from __future__ import unicode_literals

import colorful.fields
from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('core', '0004_auto_20170912_0928'),
    ]

    operations = [
        migrations.AddField(
            model_name='blogpage',
            name='main_color',
            field=colorful.fields.RGBColorField(default='#4D6AE0', verbose_name='Blog Main Color'),
        ),
    ]
