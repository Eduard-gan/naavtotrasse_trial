from logging import getLogger
from typing import List

from django.core.mail import send_mail

from forum_test.celery import app
from forum_test.settings import FROM_EMAIL


@app.task(bind=True)
def send_email(self, subject: str, message: str, recipient_list: List[str], from_email: str = FROM_EMAIL) -> None:
    logger = getLogger()

    try:
        send_mail(subject=subject, message=message, from_email=from_email, recipient_list=recipient_list)
    except Exception as e:
        logger.warning(repr(e))
        self.retry(countdown=10, max_retries=100, exc=e)
