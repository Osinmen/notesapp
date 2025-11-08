import 'package:flutter/material.dart';
import 'package:notesapplication/custom_widgets/circular_icon_button.dart';
import 'package:notesapplication/gen/assets.gen.dart';
import 'package:notesapplication/screens/theme_settings_screen.dart';
import 'package:notesapplication/utils/spacing_extensions.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});
  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 70,
      elevation: 0.0,
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 15),
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return ThemeSettingsPage();
                  },
                ),
              );
            },
            child: Text(
              "Theme Settings",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
        ),
      ],
      leading: Padding(
        padding: const EdgeInsets.only(left: 15),
        child: Text("Notes", style: Theme.of(context).textTheme.bodyLarge),
      ),
      leadingWidth: 150,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(70);
}
