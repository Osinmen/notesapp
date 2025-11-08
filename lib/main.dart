import 'package:flutter/material.dart';
import 'package:notesapp/constants/theme.dart';
import 'package:notesapp/providers/notes_provider.dart';
import 'package:notesapp/providers/theme_provider.dart';
import 'package:notesapp/screens/home_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) {
            return ThemeProvider();
          },
        ),
        ChangeNotifierProvider(
          create: (context) {
            return NotesProvider();
          },
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: Provider.of<ThemeProvider>(context, listen: false).isDarkMode
          ? ThemeMode.dark
          : ThemeMode.light,
      home: const HomeScreen()
    );
  }
}
