import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:team_manager/firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Futstats Team Manager',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Gestión de equipo'),
        ),
        body: const Center(
          child: Text('Firebase ready'),
        ),
      ),
    );
  }
}
