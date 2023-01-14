import 'package:flutter/material.dart';
import 'package:travel_ui/features/home/screen/home_screen.dart';
import 'package:travel_ui/routes/routes.dart';
import 'package:travel_ui/shared/services/navigation_service.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: Routes.routes,
      navigatorKey: NavigationService.navigatorKey,
      title: 'Flutter blueprint',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen()
    );
  }
}

