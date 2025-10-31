"""
WSGI config for mindbridge project.
"""

import os

from django.core.wsgi import get_wsgi_application

os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'mindbridge.settings')

application = get_wsgi_application()
