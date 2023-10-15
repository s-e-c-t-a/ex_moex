# Проект изучения структуры данных MOEX

Проект на базе Elixir. Для работы нужны erlang 24.3.1, elixir 1.13.3-otp-24, docker + docker_compose для запуска БД PostgreSQL

# Прогресс разработки

Хочу разобраться, как делать интерфейсы на phoenix framework. 

Из moex пока скачиваются справочники engines, markets, boards, boardgroups, durations, securitytypes, securitygroups, securitycollections

# Контейнеры с pg и pg_admin
Для настройки окружения, можно запустить контейнеры с БД и с ПГ админом в отдельной консоли

```
sudo docker compose up
```

Или запустить, как демоны их

```
sudo docker compose up -d
```

# Сборка приложения

```
mix deps.get

```

# Создание БД для работы
Выполняется разово
```
mix ecto.create
mix ecto.migrate
```

# запуск приложения
```
iex -S mix phx.server 
```
В консоли - команда чтобы импортировать справочники

```
iex(3)> ExMoex.MOEX.Index.import
```
После этого можно сходить в локальный http://localhost/browser/ pg_admin  юзер `user@domain.com` пароль `SuperSecret` (см docker-compose.yml) и поделать sql запросы в бд localhost:ex_moex_dev

# Links

https://habr.com/ru/articles/759922/

https://fs.moex.com/files/6523

https://iss.moex.com/iss/index.json

https://github.com/UA3MQJ/elx-tables

