"""
URL configuration for mindbridge project.
"""
from django.contrib import admin
from django.urls import path, include
from django.conf import settings
from django.conf.urls.static import static
from django.views.generic import TemplateView

urlpatterns = [
    path('admin/', admin.site.urls),
    path('', TemplateView.as_view(template_name='home.html'), name='home'),
    path('users/', include('users.urls')),
    path('bookings/', include('bookings.urls')),
    path('posts/', include('posts.urls')),
    path('library/', include('library.urls')),
    path('events/', include('events.urls')),
]

if settings.DEBUG:
    urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
    urlpatterns += static(settings.STATIC_URL, document_root=settings.STATIC_ROOT)

# Admin site customization
admin.site.site_header = "MINDBRIDGE Admin"
admin.site.site_title = "MINDBRIDGE"
admin.site.index_title = "Welcome to MINDBRIDGE Administration"
