import 'dart:io';
import 'package:process_run/shell.dart';

class FirebaseSetup {
  /// Prompts the user to log in to Firebase if not already done.
  static Future<void> checkFirebaseLogin() async {
    print('Please ensure you are logged in to Firebase.');
    print('Run the following command to log in:');
    print('\x1b[33mfirebase login\x1b[0m');
    print('Press Enter when you have logged in.');
    stdin.readLineSync(); // Wait for user input to proceed
    print('\x1b[32mFirebase login check completed.\x1b[0m');
  }

  /// Installs the FlutterFire CLI if not already installed.
  static Future<void> installFlutterfireCli() async {
    print('Installing FlutterFire CLI...');
    final result =
        await runShellCommand('dart pub global activate flutterfire_cli');
    if (result.exitCode != 0) {
      print(
          '\x1b[31mError installing FlutterFire CLI: ${result.stderr}\x1b[0m');
      exit(1);
    }
    print('\x1b[32mFlutterFire CLI installed successfully.\x1b[0m');
  }

  /// Adds selected Firebase dependencies to the Flutter project.
  static Future<void> addFirebaseDependencies() async {
    final services = [
      {'name': 'firebase_core', 'description': 'Firebase Core'},
      {'name': 'cloud_firestore', 'description': 'Cloud Firestore'},
      {'name': 'firebase_auth', 'description': 'Firebase Authentication'},
      // Add more services as needed
    ];

    print('Select Firebase services to add (Installing all is recommended):');
    for (int i = 0; i < services.length; i++) {
      print('${i + 1}. ${services[i]['description']}');
    }
    print('0. All of the above');

    int choice;
    do {
      print('Enter your choice (0-${services.length}):');
      choice = int.tryParse(stdin.readLineSync() ?? '0') ?? 0;
    } while (choice < 0 || choice > services.length);

    List<String> selectedServices = [];

    if (choice == 0) {
      selectedServices = services.map((s) => s['name'] as String).toList();
    } else {
      selectedServices.add(services[choice - 1]['name'] as String);
    }

    print('Adding Firebase dependencies...');
    for (final service in selectedServices) {
      print('Adding $service...');
      final result = await runShellCommand('flutter pub add $service');
      if (result.exitCode != 0) {
        print('\x1b[31mError adding $service: ${result.stderr}\x1b[0m');
        exit(1);
      }
    }

    print('\x1b[32mFirebase dependencies added successfully.\x1b[0m');
  }

  /// Runs a shell command and returns the result.
  static Future<ProcessResult> runShellCommand(String command) async {
    final shell = Shell();
    final results = await shell.run(command);
    return results.first;
  }
}

void main() async {
  await FirebaseSetup.checkFirebaseLogin();
  await FirebaseSetup.installFlutterfireCli();
  await FirebaseSetup.addFirebaseDependencies();

  print('Next steps:');
  print(
      '1. Run \x1b[33mflutterfire configure\x1b[0m to configure your Flutter project with Firebase.');
  print(
      '2. Follow the instructions to select your Firebase project and services.');
  print(
      '3. Add the initialization code to your \x1b[34mmain.dart\x1b[0m file as described here:');
  print('   \x1b[34mhttps://firebase.google.com/docs/flutter/setup\x1b[0m');
  print(
      '   Ensure you follow the setup instructions to properly initialize Firebase in your app.');
}
