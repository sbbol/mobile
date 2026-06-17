# СберБизнес — мобильное приложение

Flutter-приложение — мобильная версия клиента СберБизнес. На текущем этапе реализован каркас навигации и базовые экраны; интеграция с AI-помощником Дейлом планируется.

Связанные репозитории: backend (`server`), веб-клиент (`sbolb_assistant_web`).

## Стек

- Flutter 3.12+
- flutter_bloc

## Требования

- [Flutter SDK](https://docs.flutter.dev/get-started/install)
- Android Studio / Xcode (для эмуляторов и сборки)

## Запуск

```bash
cd sbolb_assistant_mobile
flutter pub get
flutter run
```

Для конкретной платформы:

```bash
flutter run -d chrome    # веб
flutter run -d windows   # Windows
flutter devices          # список доступных устройств
```

## Структура

```
lib/
  app.dart              # корневой виджет
  main.dart             # точка входа
  core/                 # тема, навигация, константы
  features/
    home/               # главная
    payments/           # платежи
    documents/          # документы
    products/           # продукты
    info/               # информация
```

## Сборка

```bash
flutter build apk        # Android
flutter build ios        # iOS (только на macOS)
flutter build web        # Web
```

