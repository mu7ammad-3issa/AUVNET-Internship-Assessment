# AUVNET Internship Assessment

This project is a Flutter-based e-commerce application developed as part of the AUVNET Internship Assessment. [cite_start]The application is built following Clean Architecture principles and utilizes the BLoC pattern for state management to ensure a scalable, maintainable, and robust codebase. [cite: 1, 2]

## Features

* [cite_start]**User Authentication**: Secure sign-up and login functionality using Firebase Authentication. [cite: 7]
* **Onboarding Experience**: A smooth and informative multi-page onboarding for new users.
* **Dynamic Home Page**: A user-centric home screen displaying services, promotional banners, and popular restaurants.
* **Intuitive Navigation**: A bottom navigation bar for easy access to different sections of the app.
* [cite_start]**Responsive UI**: A clean and responsive user interface designed to work across various device sizes and orientations. [cite: 10]

## Architecture

[cite_start]This project implements the principles of **Clean Architecture** to create a clear separation of concerns, making the application easier to test, maintain, and scale. [cite: 4] The architecture is divided into three main layers:

1.  **Domain Layer**: This is the core of the application. It contains the business logic, entities, and use cases, and is completely independent of the other layers.
2.  **Data Layer**: This layer is responsible for all data operations. It includes repositories that fetch data from remote (Firebase) and local (Hive) data sources.
3.  **Presentation Layer**: This layer handles the UI and user interaction. It uses the BLoC pattern to manage the state of the UI based on user events and data from the domain layer.

This separation ensures that the business logic is not tied to any specific framework or UI, making the application highly flexible.

## State Management

[cite_start]The application uses the **BLoC (Business Logic Component)** pattern for state management, as required. [cite: 4] The `flutter_bloc` package is used to connect the UI with the business logic.

* **Events**: User actions and system events are dispatched as `Events` to the corresponding BLoC.
* **States**: The BLoC processes these events, performs the necessary business logic, and emits new `States`.
* [cite_start]**"Copy With" Approach**: To maintain immutability, all state mutations are handled using the `copyWith` method, which creates a new state object instead of modifying the existing one. [cite: 5] [cite_start]This ensures predictable and equitable state transitions. [cite: 5]

[cite_start]This approach provides a clear and unidirectional data flow, making the app's state easy to manage and debug. [cite: 6]

## Getting Started

To get a local copy up and running, please follow these simple steps.

### Prerequisites

* Flutter SDK (version 3.5.4 or higher)
* Dart SDK
* An IDE like Android Studio or VS Code

### Installation

1.  **Clone the repository:**
    ```sh
    git clone https://github.com/your-username/AUVNET-Internship-Assessment.git
    ```
2.  **Navigate to the project directory:**
    ```sh
    cd AUVNET-Internship-Assessment
    ```
3.  **Install dependencies:**
    ```sh
    flutter pub get
    ```
4.  **Run the application:**
    ```sh
    flutter run
    ```

## Project Structure

[cite_start]The project is organized into a modular structure to keep the codebase clean and easy to navigate: [cite: 12]

```
lib/
├── core/
│   ├── di/
│   ├── helpers/
│   ├── routing/
│   ├── theming/
│   └── widgets/
├── features/
│   ├── auth/
│   │   ├── data/
│   │   ├── domain/
│   │   └── presentation/
│   ├── home/
│   │   ├── data/
│   │   ├── domain/
│   │   └── presentation/
│   ├── layout/
│   └── onboarding/
├── firebase_options.dart
└── main.dart
```

* **core**: Contains shared components like routing, theming, dependency injection, and reusable widgets.
* **features**: Each feature (e.g., auth, home) has its own dedicated folder, which is further divided into `data`, `domain`, and `presentation` layers according to the Clean Architecture principles.

## Dependencies

The main dependencies used in this project are:

* **flutter_bloc**: For state management.
* **firebase_core**, **firebase_auth**: For Firebase integration and user authentication.
* **get_it**: For dependency injection.
* **flutter_screenutil**: For creating a responsive UI.
* **google_fonts**: For custom fonts.

You can find the full list of dependencies in the `pubspec.yaml` file.
