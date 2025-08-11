# flutter_module_boilerplate

## 1. Introduction

This Flutter module boilerplate is designed with **Clean Architecture** principles in mind, providing a scalable and maintainable foundation for Flutter applications. The architecture follows **SOLID principles** to ensure code quality, testability, and flexibility.

### Key Architectural Benefits:

- **Clean Architecture Layers**: Separation of concerns through distinct layers (Domain, Data, Presentation) that promote independence and testability
- **SOLID Principles**: Implementation follows Single Responsibility, Open/Closed, Liskov Substitution, Interface Segregation, and Dependency Inversion principles
- **Dependency Injection**: Uses GetIt for efficient dependency management and loose coupling
- **Modular Design**: Easily extensible architecture that allows adding new features without affecting existing code
- **Scalable Structure**: Organized codebase that grows with your application needs
- **Custom Extensions**: Built-in extension points for customizing behavior and adding domain-specific functionality

The boilerplate provides a robust starting point that can be easily extended and customized for various project requirements while maintaining code quality and architectural integrity.

Refer to the [official documentation](https://flutter.dev/docs) for more information on Flutter development.
Refer to the [official documentation](https://blog.cleancoder.com/uncle-bob/2012/08/13/the-clean-architecture.html) for more clean architecture principles.
Refer to the [official documentation](https://www.digitalocean.com/community/conceptual-articles/s-o-l-i-d-the-first-five-principles-of-object-oriented-design) for more information on SOLID principles.

## 2. Requirements

- Current version of Flutter SDK: 3.32.7
- if you don't have installed please run the following command:
  `dart pub global activate flutter_gen 5.11.0`

## 3. Setup

1. Clone the repository.
2. Navigate to the project directory.
3. Run `flutter pub get` to install dependencies.
4. Run `bash scripts/code_gen.sh` to generate code.
5. Open the project in your preferred IDE.
6. Start developing your Flutter app.

## 4. Running the App

### To run the Flutter App, run:

```bash
flutter build run -t lib/<target_file.dart>
```

example:

```bash
flutter build run -t lib/main_prod.dart
```

## 5. Directory Structure

```
lib/
├── core/
│   ├── constants/
│   │   ├── app_constants.dart
│   ├── errors/
│   │   ├── exceptions.dart
│   ├── network/
│   │   ├── dio_client.dart
│   ├── extensions/
│   │   ├── string_extensions.dart
│   ├── utils/
│   │   ├── date_time_utils.dart
│   ├── enums/
│   │   ├── app_enums.dart
├── data/
│   ├── repositories/
│   │   ├── user_repository_impl.dart
│   ├── models/
│   │   ├── user_model.dart
│   ├── sources/
│   │   ├── local/
│   │   │   ├── user_local_data_source.dart
│   │   ├── remote/
│   │   │   ├── user_remote_data_source.dart
│   ├── database/
│   │   ├── app_database.dart
│   ├── network/
│   │   ├── dio_client.dart
│   │   ├── res_client.dart
├── domain/
│   ├── entities/
│   │   ├── user.dart
│   ├── usecases/
│   │   ├── get_user.dart
│   ├── repositories/
│   │   ├── user_repository.dart
├── presentation/
│   ├── features/
│   │   ├── user/
│   │   │   ├── views/
│   │   │   │   ├── user_view.dart
│   │   │   ├── models/
│   │   │   │   ├── user_model.dart
│   │   │   ├── widgets/
│   │   │   │   ├── user_card.dart
│   │   ├── app.dart
│   ├── themes/
│   │   ├── app_theme.dart
│   ├── generate/
│   │   ├── assets/
│   │   ├── localizations/
│   │   │   ├── app_localizations.dart
│   ├── routes/
│   │   ├── app_router.dart
│   │   ├── route_generator.dart
│   │   ├── route_paths.dart
│   │   ├── route_transitions.dart
│   ├── widgets/
│   ├── app.dart
├── main.dart
```

## 6. Usage

- Use the `lib/domain/entities` directory to define your data models.
- Use the `lib/data/repositories` directory for data access and repository patterns.
- Use the `lib/presentation` directory for UI components and screens.
- Use the `lib/core` directory for core utilities and configurations.

## 7. Contributing
Contributions are welcome! Please submit a pull request or open an issue for any improvements or bug fixes.
