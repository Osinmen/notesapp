
import 'package:flutter/material.dart';
import 'package:notesapplication/gen/assets.gen.dart';
import 'package:notesapplication/providers/theme_provider.dart';
import 'package:provider/provider.dart';
class BackButtonWidget extends StatelessWidget {
  const BackButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Assets.back.image(color: Theme.of(context).primaryColor),
      onTap: () {
        Navigator.pop(context);
      },
    );
  }
}