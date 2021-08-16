from typing import Type

from django.db.models.signals import post_save
from django.dispatch import receiver
from machina.apps.forum_tracking.models import ForumReadTrack

from .tasks import send_email


"""
Все хэндлеры сигналов подцепляются в api.apps.ApiConfig.ready
"""


@receiver(post_save, sender=ForumReadTrack)
def send_forum_tracking_email(sender: Type[ForumReadTrack], **kwargs) -> None:
    instance = kwargs.get('instance')

    if kwargs.get('created') and instance and instance.forum:
        send_email.delay(
            subject='Notification from our magnificent service',
            message=f"You're tracking forum '{instance.forum.name}' now!",
            recipient_list=[instance.user.email]
        )
