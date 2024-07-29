# Firebase Simplify: Effortless Firebase Integration for Flutter

**Tired of the tedious Firebase setup process?** Firebase Simplify streamlines your Flutter development by automating the configuration and integration of Firebase services.

## Why Choose Firebase Simplify?

- **Effortless Setup:** Say goodbye to manual configuration! Firebase Simplify handles the entire setup process, from installing the Firebase CLI to adding dependencies and providing initialization guidance.
- **Time-Saving:** Focus on building your app, not wrestling with Firebase setup. Firebase Simplify automates the process, saving you valuable time and effort.
- **User-Friendly:** The intuitive script guides you through each step, making the process simple and straightforward.

## Features

- **Automatic Firebase CLI Setup:** Checks if the Firebase CLI is installed and guides you through the installation if necessary.
- **Firebase Login:** Prompts you to log in to Firebase before proceeding.
- **Firebase Configuration:** Guides you through configuring your Firebase projects.
- **Dependency Management:** Adds the required Firebase dependencies to your Flutter project.
- **Initialization Guidance:** Provides clear instructions for adding Firebase initialization code to your `main.dart` file.

## Installation

1. **Install Flutter and Dart:** Ensure you have Flutter and Dart installed on your system.
2. **Add Firebase Simplify to your `pubspec.yaml`:**

   ```yaml
   dev_dependencies:
     firebase_simplify: ^1.1.1
   ```

## Usage

1. **Ensure Firebase CLI is Installed**

    Before running the script, make sure you have the Firebase CLI installed and you're logged in. If not, install the Firebase CLI and log in by running:

    ```yaml
    npm install -g firebase-tools
    firebase login
    ```

2. **Run Easy Firebase**

    Navigate to your Flutter project directory and run the following command to start the setup process:

    ```yaml
    dart run firebase_simplify
    ```

    This script will guide you through the necessary steps:

    - Checking if Firebase CLI is installed.
    - Prompting you to log in to Firebase if necessary.
    - Adding Firebase dependencies to your Flutter project.
    - Providing instructions for Firebase initialization in your `main.dart` file.

3. **Manual Configuration**

    After running the script, follow these manual steps:

    - **Add Initialization Code**: Copy the Firebase initialization code provided by the script and add it to your `lib/main.dart` file.

    For detailed instructions on how to configure Firebase, please refer to the official Firebase documentation.

## Contributing

Contributions are welcome! If you find any issues or have suggestions for improvements, please open an issue or submit a pull request.

## License

This package is licensed under the MIT License. See the LICENSE file for more details.

## Contact

For any questions or support, please contact [bbjulius900@gmail.com](bbjulius900@gmail.com)

---
Get started with Firebase Simplify today and experience the ease of integrating Firebase into your Flutter projects!
