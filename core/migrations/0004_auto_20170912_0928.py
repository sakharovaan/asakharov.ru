# -*- coding: utf-8 -*-
# Generated by Django 1.10.5 on 2017-09-12 09:28
from __future__ import unicode_literals

from django.db import migrations
import django.db.models.manager


class Migration(migrations.Migration):

    dependencies = [
        ('core', '0003_add_short_feed_description_to_blog_page'),
    ]

    operations = [
        migrations.AlterModelManagers(
            name='blogpage',
            managers=[
                ('extra', django.db.models.manager.Manager()),
            ],
        ),
    ]