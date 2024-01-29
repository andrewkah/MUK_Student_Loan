# Makerere Student Fund  ![Static Badge](https://img.shields.io/badge/makerere_student_fund-v1.0-blue?style=for-the-badge)  ![GitHub contributors](https://img.shields.io/github/contributors/andrewkah/MUK_Student_Loan?style=for-the-badge&logo=github)

## Introduction
In today's education landscape, the cost of higher education continues to rise, making it increasingly challenging for students to fund their studies. To address this issue, we propose the development of a mobile application that simplifies and streamlines the process of applying for student loans. This app will be a user-friendly, accessible, and efficient platform that empowers students to seek financial assistance for their educational pursuits. In this concept paper, we outline the key features, functionalities, and benefits of the Student Loan Request App.

## Purpose
The Student Loan Request App aims to:
- Simplify and expedite the process of applying for student loans, reducing paperwork and administrative burdens.
- Make financial assistance more accessible to a broader range of students, including those from underserved communities.
- Provide students with a clear understanding of their loan options, terms, and repayment plans.
- Minimize common application errors and improve the efficiency of loan processing.

## Key Features
- User Registration & Profile creation
- Loan Eligibility Checker
- Loan Application
- Document Upload
- Real time updates.

## Folder Structure
```
app_screens
│   ├── application_screen_1.dart
│   ├── application_screen_2.dart
│   ├── application_screen_3.dart
│   ├── bottom_navigation_bar.dart
│   ├── faq_screen.dart
│   ├── home_screen_controller.dart
│   ├── home_screen.dart
│   ├── Image_upload.dart
│   ├── listings_screen.dart
│   ├── main_screen.dart
│   ├── map_screen.dart
│   ├── pay_screen.dart
│   ├── progress.dart
│   ├── settings_screen.dart
│   ├── terms_and_conditions_screen.dart
│   └── transactions_screen.dart
├── authentication_files
│   ├── authentication_repository.dart
│   ├── dependency_injection.dart
│   ├── network_controller.dart
│   ├── preferences.dart
│   ├── signin_controller.dart
│   ├── signup_controller.dart
│   └── signup_email_password_failure.dart
├── auth_screens
│   ├── forgot_password_screen.dart
│   ├── locked_fingerprint_screen.dart
│   ├── login_screen.dart
│   ├── not_recognised_fingerprint_screen.dart
│   ├── on_boarding_screen.dart
│   ├── registration_screen.dart
│   ├── splash_screen.dart
│   └── unlocked_fingerprint_screen.dart
├── firebase_options.dart
├── main.dart
├── models
│   ├── listings_model.dart
│   ├── listings_repository.dart
│   ├── loan_application_model.dart
│   ├── loan_application_repository.dart
│   ├── user_model.dart
│   └── user_repository.dart
├── provider
│   └── theme_provider.dart
├── translation
│   ├── google_translate.dart
│   └── sunbird_translation_service.dart
└── widgets
    ├── custom_appbar.dart
    ├── custom_button.dart
    ├── custom_form_builder_fields.dart
    └── row_text_fields.dart



```

## Tech Stack
 <a href="https://dart.dev" target="_blank" rel="noreferrer"> <img src="https://www.vectorlogo.zone/logos/dartlang/dartlang-icon.svg" alt="dart" width="40" height="40"/> </a> <a href="https://firebase.google.com/" target="_blank" rel="noreferrer"> <img src="https://www.vectorlogo.zone/logos/firebase/firebase-icon.svg" alt="firebase" width="40" height="40"/> </a> <a href="https://flutter.dev" target="_blank" rel="noreferrer"> <img src="https://www.vectorlogo.zone/logos/flutterio/flutterio-icon.svg" alt="flutter" width="40" height="40"/> </a>

## Install this project
  ```bash
  git clone https://github.com/andrewkah/MUK_Student_Loan.git
  ```

## Getting started with Firebase.
- Create new Firebase Project.
- Install Firebase_CLI
  - Install node.js
    ```bash
    npm install node.js
    ```
  - Install firebase tools
    ```bash
    npm install -g firebase-tools
    ```
- Log into firebase
  ```bash
  firebase login
  ```
- Activate FlutterFire_CLI
  ```bash
  dart pub global activate flutterfire_cli
  ```
  ```bash
  flutterfire configure --project=name-of-project
  ```
You can also view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## License
![Static Badge](https://img.shields.io/badge/Apache-2.0-blue?style=for-the-badge&logo=Apache)

