import 'package:flutter/material.dart';
import 'package:reactive_theme/reactive_theme.dart';
import 'package:theme/screens/home.dart';
import 'package:theme/shared/sharedpre.dart';
import 'package:theme/themedata/the.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await CacheHelper.cacheIntialization();
  final thememode = await ReactiveMode.getSavedThemeMode();
  runApp(  MyApp(savedThemeMode:  thememode));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, this.savedThemeMode});

  // This widget is the root of your application.

  final ThemeMode? savedThemeMode;
  @override
  Widget build(BuildContext context) {
    return  ReactiveThemer(
        savedThemeMode: savedThemeMode,
    builder: (reactiveMode)=> MaterialApp(  debugShowCheckedModeBanner: false,
      //Pass the reactiveMode to the themeMode parameter in order to toggle theme
      themeMode: reactiveMode,
      title: 'Reactive Theme Demo',
      theme:  ThemeData.light(),
      darkTheme:  ThemeData.dark(),


      home: const theme(),
    ));
  }
}
