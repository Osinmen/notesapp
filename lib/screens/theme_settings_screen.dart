import 'package:flutter/material.dart';
import 'package:notesapplication/custom_widgets/back_button_widget.dart';
import 'package:notesapplication/gen/assets.gen.dart';
import 'package:notesapplication/providers/theme_provider.dart';
import 'package:provider/provider.dart';

class ThemeSettingsPage extends StatelessWidget {
  const ThemeSettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: BackButtonWidget(),
        ),
        title:  Text('Theme Settings', style: Theme.of(context).textTheme.bodyMedium,),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Consumer<ThemeProvider>(
          builder: (context, themeProvider, child) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Dark Mode',
                  style: TextStyle(fontSize: 18),
                ),
                Switch(
                  value: themeProvider.isDarkMode,
                  onChanged: (value) {
                    themeProvider.toggleTheme();
                    themeProvider.saveTheme();
                  },
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
