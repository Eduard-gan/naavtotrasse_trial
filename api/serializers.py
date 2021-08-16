from rest_framework.serializers import HyperlinkedModelSerializer, RelatedField
from machina.apps.forum_tracking.models import ForumReadTrack


class ForumField(RelatedField):
    def to_representation(self, value):
        return value.name


class UserField(RelatedField):
    def to_representation(self, value):
        return value.username


class ForumReadTrackSerializer(HyperlinkedModelSerializer):
    user = UserField(read_only=True)
    forum = ForumField(read_only=True)

    class Meta:
        model = ForumReadTrack
        fields = ['url', 'user', 'forum', 'mark_time']
