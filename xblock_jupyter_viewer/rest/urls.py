"""
Defines a URL to return a notebook html page to be used in an iframe
"""
from django.urls import re_path

from .views import NotebookViewer

app_name = 'xblock_jupyter_viewer'

urlpatterns = [
    re_path(
        r'^render_notebook/$',
        NotebookViewer.as_view(),
        name='jupyter_nb_viewer'
    )
]
