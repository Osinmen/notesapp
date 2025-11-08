import 'package:flutter/material.dart';
import 'package:notesapplication/custom_widgets/circular_icon_button.dart';
import 'package:notesapplication/gen/assets.gen.dart';
import 'package:notesapplication/utils/spacing_extensions.dart';
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 70,
      elevation: 0.0,
      actions: [
        CircularIconButton(imagePath: Assets.search.path, onTap:() {},), 
                20.width, 
                Padding(padding: const EdgeInsets.only(right: 15),
                  child: CircularIconButton(imagePath: Assets.infoOutline.path, onTap: () {},),),
      ],
      leading: Padding(
        padding: const EdgeInsets.only(left: 15),
        child: Text("Notes", style: Theme.of(context).textTheme.bodyLarge)),
      leadingWidth: 150,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(70);
}