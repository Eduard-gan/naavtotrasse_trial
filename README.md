# Задание

## Описание

Для бекенда создать эндпоинт для получения списка пользователей, отслеживающих конкретный форум (аналог в админке
/admin/forum_tracking/forumreadtrack/)

Для фронтенда создать SPA c представлением списка пользователей, отслеживающих конкретный форум (аналог в админке
/admin/forum_tracking/forumreadtrack/)

Представление должно иметь список с пагинацией.

Дополнительное задание (по желанию)
Создать celery task для отправки email пользователю в момент, когда он начал отслеживать форум.

В requirements находится пакет для форума. Дополнительных моделей создавать не нужно.
Использовать модели форума.

## Стек

### front

boostrap 4 или 5 + vuejs 2 или 3. Можно использовать уже готовую связку, либо собирать отдельно. Тему и стили
использовать дефолтные для bootstrap и компонентов.

Результат должен располагаться в корневой папке web с доступом по адресу localhost:номер_порта

### backend

python django + drf + то, что указано в requirements.txt

Результат должен быть подготовлен для docker сборки с доступом по адресу localhost:8005

Для сборки бекенда нужно заполнить по примеру .env в корне проекта и использовать команду

```
docker-compose up -d --build
```

Устанавливаем бэкап БД и создаем суперпользователя

```shell
docker exec -i db_container_name sh -c 'exec mysql -u"$MYSQL_USER" -p"$MYSQL_PASSWORD" $MYSQL_DATABASE' < forum_test.sql

где db_container_name - с большой вероятностью будет иметь имя forum_test_db_1

docker-compose exec django python manage.py createsuperuser
```

В случае возникновения ошибок на windows, используйте:
```shell
docker cp forum_test.sql forum_test_db_1:/root/bkp.sql

docker exec -i forum_test_db_1 sh -c 'exec mysql -u"$MYSQL_USER" -p"$MYSQL_PASSWORD" $MYSQL_DATABASE < /root/bkp.sql'
```
