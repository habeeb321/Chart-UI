import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:octohub_assignment/core/constants.dart';
import 'package:octohub_assignment/firebase_options.dart';
import 'package:octohub_assignment/view/login_screen/controller/login_controller.dart';
import 'package:octohub_assignment/view/main_screen/main_screen.dart';
import 'package:octohub_assignment/view/signup_screen/controller/signup_controller.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

final navigatorKey = GlobalKey<NavigatorState>();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<LoginController>(
          create: (context) => LoginController(),
        ),
        ChangeNotifierProvider<SignupController>(
          create: (context) => SignupController(),
        ),
      ],
      child: MaterialApp(
        navigatorKey: navigatorKey,
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          textTheme: const TextTheme(
            displayLarge: TextStyle(color: kBlackColor),
            displayMedium: TextStyle(color: kBlackColor),
            bodyMedium: TextStyle(color: kBlackColor),
          ),
        ),
        home: const MainScreen(),
      ),
    );
  }
}
