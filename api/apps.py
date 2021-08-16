from django.apps import AppConfig


class ApiConfig(AppConfig):
    name = 'api'

    def ready(self):
        # Рагистрация обработчиков сигналов.
        from . import signal_receivers
