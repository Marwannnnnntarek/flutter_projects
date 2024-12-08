import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:myapp/Screens/LogIn.dart';
import 'package:myapp/Screens/Register.dart';
import 'package:myapp/firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const ChatApp());
}

class ChatApp extends StatelessWidget {
  const ChatApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        'LogInScreen': (context) => const LogInScreen(),
        'RegisterScreen': (context) => const RegisterScreen(),
      },
      initialRoute: 'LogInScreen',
    );
  }
}
