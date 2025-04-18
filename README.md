# Мост домой | Application

Приложение созданное в рамках финала хакатона "Моя профессия – ИТ"

https://github.com/user-attachments/assets/260c0fe0-02fa-49fa-a306-ddb88a7ede95

## 📖 Содежрание

1. [🛠 Технологии](#-технологии)
2. [📦 Установка](#-установка)
3. [🔧 Сборка](#-сборка)
4. [📂 Структура приложения](#-структура-приложения)
5. [🤝 Команда](#-команда)

## 🛠 Технологии

### Языки

- [Dart](https://dart.dev/)

### Фреймворки

- [Flutter](https://flutter.dev/)

### Пакеты

- [auto_route](https://pub.dev/packages/auto_route) - навигация
- [cached_network_image](https://pub.dev/packages/cached_network_image) - кэшированные изображения
- [chopper](https://pub.dev/packages/chopper) - генератор http клиентов
- [flutter_bloc](https://pub.dev/packages/flutter_bloc) - управление состоянием
- [flutter_form_builder](https://pub.dev/packages/flutter_form_builder) - пакет для быстрого создания форм с валидацией
- [flutter_svg](https://pub.dev/packages/flutter_svg) - работа с svg в UI
- [freezed](https://pub.dev/packages/freezed) - гененрация boilerplate кода
- [injectable](https://pub.dev/packages/injectable) - dependency injection
- [shared_preferences](https://pub.dev/packages/shared_preferences) - локальное хранилище
- [logger](https://pub.dev/packages/logger) - формирование логов
- [skeletonizer](https://pub.dev/packages/skeletonizer) - skeleton'ы
- [swagger_dart_code_generator](https://pub.dev/packages/swagger_dart_code_generator) - генерация моделей и клиента из OpenAPI спецификации

## 📦 Установка

```bash
## 1. Клонируйте репозиторий:
git clone https://github.com/toastmanager/mpit_final_2024_app.git
## 2. Перейдите в папку с приложением:
cd mpit_reg_2024_app
## 3. Установите зависимости:
flutter pub get
## 4. Скопируйте .env.example в .env:
cp .env.example .env
## 5. Запустите приложение:
flutter run
```

## 🔧 Сборка

- Android
  ```bash
  flutter build apk
  ```
  - Добавьте в конец `--split-per-abi`, чтобы собрать файлы отдельно под каждый ABI
- IOS
  ```bash
  flutter build ios
  ```
  - Добавьте в конец `--no-codesign`, чтобы оставить приложение без подписи

## 📂 Структура приложения

Проект организован по принципу функциональной декомпозиции, где каждая функция приложения выделена в отдельную папку внутри директории `features/`. Каждая такая папка содержит три основных слоя, каждый из которых отвечает за определённый аспект функциональности:

1. **data/**

   - Этот слой отвечает за реализацию бизнес-логики и вспомогательный функционал, необходимый для её работы. Например, здесь могут находиться сервисы для работы с аутентификационными токенами, о которых не должен знать `domain` слой.
   - Включает в себя реализации репозиториев и другие вспомогательные компоненты.

2. **domain/**

   - Слой бизнес-логики. Здесь сосредоточена основная логика приложения, которая должна быть максимально независимой от деталей реализации.
   - Включает в себя интерфейсы репозиториев, управление состоянием.
   - Этот слой не должен зависеть от других слоёв, кроме `core`.

3. **presentation/**
   - Слой пользовательского интерфейса (UI). Этот слой отвечает за отображение данных и взаимодействие с пользователем.
   - Должен зависеть только от `domain` слоя и общих функций из `core`.

Часто используемый функционал, который может быть использован в разных частях приложения, вынесен в отдельную папку `core/`.

## 🤝 Команда

| Фамилия Имя      | Роль        |
| ---------------- | ----------- |
| Лаптева Милана   | Менеджер    |
| Корякин Владимир | Дизайнер    |
| Габышев Николай  | Разработчик |
