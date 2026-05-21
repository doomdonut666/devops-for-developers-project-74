### Hexlet tests and linter status:

[![CI/CD](https://github.com/doomdonut666/devops-for-developers-project-74/actions/workflows/push.yml/badge.svg)](https://github.com/doomdonut666/devops-for-developers-project-74/actions/workflows/push.yml)

[![Actions Status](https://github.com/doomdonut666/devops-for-developers-project-74/actions/workflows/hexlet-check.yml/badge.svg)](https://github.com/doomdonut666/devops-for-developers-project-74/actions)

# JavaScript Fastify Blog

Проект блога на Fastify с использованием PostgreSQL и Docker.

Setup

### Requirements

* [Docker](https://www.docker.com/)
* [Docker Compose V2](https://docs.docker.com/compose/)
* [Node.js](https://nodejs.org/) (>= 20.x)
* [Make](https://www.gnu.org/software/make/)


### Steps

1. **Клонируйте проект:**
   **Bash**

   ```
   git clone <your-repository-url>
   javascript-fastify-blog
   cd javascript-fastify-blog
   ```
2. **Подготовка окружения:**
   В корне проекта создайте файл `.env` на основе примера:
   **Bash**

   ```
   cp .env.example .env
   ```
3. **Запуск проекта:**
   Для первоначальной настройки и установки зависимостей выполните:
   **Bash**

   ```
   make setup
   ```
4. **Запуск приложения:**
   **Bash**

   ```
   make dev
   ```

   После запуска приложение будет доступно по адресу `http://localhost:8080`.


## Testing

Для выполнения тестов в контейнере используйте команду:

**Bash**

```
make test
```


## Commands

* `make setup` — установка зависимостей и первичная миграция базы данных.
* `make dev` — запуск приложения в режиме разработки (с поддержкой горячей перезагрузки).
* `make test` — запуск тестов.


## Troubleshooting

**Проблемы с подключением к базе данных:**
Убедитесь, что ваш файл `.env` содержит корректные параметры:

**Фрагмент кода**

```
DATABASE_HOST=db
DATABASE_NAME=postgres
DATABASE_USERNAME=postgres
DATABASE_PASSWORD=password
```
