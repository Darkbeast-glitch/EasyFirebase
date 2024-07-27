# Easy Firebase

`firebase_simplify` is a Dart package that simplifies adding Firebase to your Flutter projects. It automates the setup process, allowing you to quickly integrate Firebase services with minimal manual configuration.

## Features

- **Automatic Firebase CLI Setup**: Checks if Firebase CLI is installed and guides you through the installation if necessary.
- **Firebase Login**: Instructs users to log in to Firebase before proceeding.
- **Firebase Configuration**: Prompts users to configure their Firebase projects.
- **Dependency Management**: Adds necessary Firebase dependencies to your Flutter project.
- **Initialization Guidance**: Provides instructions for adding Firebase initialization code to your `main.dart`.

## Installation

To use `firebase_simplify`, first make sure you have [Flutter](https://flutter.dev/docs/get-started/install) and [Dart](https://dart.dev/get-dart) installed on your system.

Add `firebase_simplify` to your `pubspec.yaml` file:

```yaml
dev_dependencies:
  firebase_simplify: ^1.0.0

Usage
-----

1.  **Ensure Firebase CLI is Installed**

    Before running the script, make sure you have the Firebase CLI installed and you're logged in. If not, install the Firebase CLI and log in by running:

    bash

    Copy code

    `npm install -g firebase-tools
    firebase login`

2.  **Run Firebase Simplify**

    Navigate to your Flutter project directory and run the following command to start the setup process:

    bash

    Copy code

    `dart run firebase_simplify`

    This script will guide you through the necessary steps, including:

    -   Checking if Firebase CLI is installed.
    -   Prompting you to log in to Firebase if necessary.
    -   Adding Firebase dependencies to your Flutter project.
    -   Providing instructions for Firebase initialization in your `main.dart` file.
3.  **Manual Configuration**

    After running the script, follow these manual steps:

    -   **Add Initialization Code**: Copy the Firebase initialization code provided by the script and add it to your `lib/main.dart` file.

    For detailed instructions on how to configure Firebase, please refer to the official Firebase documentation.

Contributing
------------

Contributions are welcome! If you find any issues or have suggestions for improvements, please open an issue or submit a pull request.

License
-------

This package is licensed under the MIT License. See the LICENSE file for more details.

Contact
-------

For any questions or support, please contact bbjulius900@gmail.com.

* * * * *

Thank you for using `Firebase_simplify`! We hope this package makes your Firebase integration easier and more efficient.