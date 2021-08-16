from machina.apps.forum_tracking.models import ForumReadTrack
from .serializers import ForumReadTrackSerializer
from rest_framework import viewsets
from rest_framework import permissions


class ForumReadTrackViewSet(viewsets.ModelViewSet):
    """
    API endpoint that allows users to be viewed or edited.
    """
    queryset = ForumReadTrack.objects.all().order_by('id')
    serializer_class = ForumReadTrackSerializer
    permission_classes = [permissions.IsAuthenticated]
