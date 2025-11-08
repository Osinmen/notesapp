import 'package:flutter/material.dart';

class CircularIconButton extends StatelessWidget {
  final String imagePath;
  final VoidCallback onTap;
  const CircularIconButton({super.key, required this.imagePath, required this.onTap});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          color: Color(0XFF3B3B3B), 
          borderRadius: BorderRadius.circular(15), 
        ),
        child: Image.asset(imagePath, color: Theme.of(context).primaryColor,),
      ),
    );
  }
}