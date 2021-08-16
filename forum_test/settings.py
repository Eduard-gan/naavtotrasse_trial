import os
import environ
from machina import MACHINA_MAIN_STATIC_DIR, MACHINA_MAIN_TEMPLATE_DIR
from typing import List

BASE_DIR = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))

env = environ.Env(
    DEBUG=(bool, False),
    ALLOWED_HOSTS=(list, [])
)
environ.Env.read_env(env_file=os.path.join(BASE_DIR, '.env'))

SECRET_KEY: str = env.str('SECRET_KEY')
DEBUG: bool = env.bool('DEBUG')
ALLOWED_HOSTS: List[str] = env.list('ALLOWED_HOSTS')

# Application definition

INSTALLED_APPS = [
    'django.contrib.admin',
    'django.contrib.auth',
    'django.contrib.contenttypes',
    'django.contrib.sessions',
    'django.contrib.messages',
    'django.contrib.staticfiles',

    'django_extensions',
    'debug_toolbar',
    'django_celery_beat',
    'rest_framework',
    'django_filters',
    'mptt',
    'haystack',
    'widget_tweaks',
    'drf_yasg',

    'machina',
    'machina.apps.forum',
    'machina.apps.forum_conversation',
    'machina.apps.forum_conversation.forum_attachments',
    'machina.apps.forum_conversation.forum_polls',
    'machina.apps.forum_feeds',
    'machina.apps.forum_moderation',
    'machina.apps.forum_search',
    'machina.apps.forum_tracking',
    'machina.apps.forum_member',
    'machina.apps.forum_permission',
]

MIDDLEWARE = [
    'debug_toolbar.middleware.DebugToolbarMiddleware',
    'django.middleware.security.SecurityMiddleware',
    'django.contrib.sessions.middleware.SessionMiddleware',
    'django.middleware.common.CommonMiddleware',
    'django.middleware.csrf.CsrfViewMiddleware',
    'django.contrib.auth.middleware.AuthenticationMiddleware',
    'django.contrib.messages.middleware.MessageMiddleware',
    'django.middleware.clickjacking.XFrameOptionsMiddleware',
    'machina.apps.forum_permission.middleware.ForumPermissionMiddleware',
]

ROOT_URLCONF = 'forum_test.urls'

TEMPLATES = [
    {
        'BACKEND': 'django.template.backends.django.DjangoTemplates',
        'DIRS': [
            os.path.join(BASE_DIR, 'templates'),
            MACHINA_MAIN_TEMPLATE_DIR,
        ],
        'OPTIONS': {
            'context_processors': [
                'django.template.context_processors.debug',
                'django.template.context_processors.request',
                'django.contrib.auth.context_processors.auth',
                'django.contrib.messages.context_processors.messages',
                'machina.core.context_processors.metadata',
            ],
            'loaders': [
                'django.template.loaders.filesystem.Loader',
                'django.template.loaders.app_directories.Loader',
            ],
        },
    },
]

WSGI_APPLICATION = 'forum_test.wsgi.application'

AUTH_PASSWORD_VALIDATORS = [
    {
        'NAME': 'django.contrib.auth.password_validation.UserAttributeSimilarityValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.MinimumLengthValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.CommonPasswordValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.NumericPasswordValidator',
    },
]

LANGUAGE_CODE = 'ru-ru'

TIME_ZONE = 'Europe/Moscow'

USE_I18N = True

USE_L10N = True

USE_TZ = True

STATIC_URL = '/static/'
STATIC_ROOT = os.path.join(BASE_DIR, 'static')
STATICFILES_FINDERS = (
    'django.contrib.staticfiles.finders.FileSystemFinder',
    'django.contrib.staticfiles.finders.AppDirectoriesFinder',
)
STATICFILES_DIRS = [
    MACHINA_MAIN_STATIC_DIR,
]

MEDIA_URL = '/media/'
MEDIA_ROOT = os.path.join(BASE_DIR, 'media')

# Database

DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.mysql',
        'NAME': env.str('MYSQL_DATABASE'),
        'USER': env.str('MYSQL_USER'),
        'PASSWORD': env.str('MYSQL_PASSWORD'),
        'HOST': env.str('DB_HOST'),
        'PORT': env.int('DB_PORT'),
        'OPTIONS': {
            'init_command': 'SET NAMES utf8mb4, {}, {}, {}'.format(
                "sql_mode='STRICT_TRANS_TABLES'",
                "default_storage_engine='INNODB'",
                "transaction_isolation='READ-COMMITTED'",
            ),
        },
    },
}

FILE_UPLOAD_PERMISSIONS = 0o644

MESSAGE_STORAGE = 'django.contrib.messages.storage.session.SessionStorage'

EMAIL_BACKEND = 'django.core.mail.backends.console.EmailBackend'

INTERNAL_IPS: List[str] = env.list('INTERNAL_IPS')

CACHES = {
    'default': {
        'BACKEND': 'django.core.cache.backends.filebased.FileBasedCache',
        'LOCATION': '/var/tmp/django_cache',
    },
    'redis': {
        'BACKEND': 'django_redis.cache.RedisCache',
        'LOCATION': env.url('REDIS_CACHE_URL'),
        'OPTIONS': {
            'DB': 1,
            'CLIENT_CLASS': 'django_redis.client.DefaultClient',
            'IGNORE_EXCEPTIONS': True,
            'COMPRESSOR': 'django_redis.compressors.zlib.ZlibCompressor',
        },
    },
    'machina_attachments': {
        'BACKEND': 'django.core.cache.backends.filebased.FileBasedCache',
        'LOCATION': '/tmp',
    },
}

CELERY_ACCEPT_CONTENT = ['json', ]
CELERY_TASK_SERIALIZER = 'json'
CELERY_RESULT_SERIALIZER = 'json'
CELERY_BROKER_URL = env.url('CELERY_BROKER_URL')
CELERY_RESULT_BACKEND = env.url('CELERY_RESULT_BACKEND')
CELERY_TIMEZONE = TIME_ZONE
CELERY_CACHE_BACKEND = 'redis'
CELERY_BEAT_SCHEDULER = 'django_celery_beat.schedulers:DatabaseScheduler'
CELERY_IGNORE_RESULT = True

REST_FRAMEWORK = {
    'DEFAULT_PERMISSION_CLASSES': [
        'rest_framework.permissions.IsAuthenticatedOrReadOnly',
    ],
    'DEFAULT_AUTHENTICATION_CLASSES': (
        'rest_framework.authentication.SessionAuthentication',
    ),
    'DEFAULT_PAGINATION_CLASS':
        'rest_framework.pagination.PageNumberPagination',
    'PAGE_SIZE': 10,
}

HAYSTACK_CONNECTIONS = {
    'default': {
        'ENGINE': 'haystack.backends.simple_backend.SimpleEngine',
    },
}
