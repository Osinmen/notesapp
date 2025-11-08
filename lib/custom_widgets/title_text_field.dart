import 'package:flutter/material.dart';

class TitleTextField extends StatefulWidget {
 final TextEditingController controller;
  const TitleTextField({super.key, required this.controller});

  @override
  State<TitleTextField> createState() => _TitleTextField();
}

class _TitleTextField extends State<TitleTextField> {
 
  final FocusNode _focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return TextField(
       focusNode: _focusNode,
      controller:  widget.controller,
      maxLines: null,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 28,
        fontWeight: FontWeight.bold,
        height: 1.3,
      ),
      decoration: InputDecoration(
        border: InputBorder.none,
          hintText: 'Title',
          hintStyle: Theme.of(context).textTheme.bodyLarge,
           contentPadding: EdgeInsets.only(left: 15),
      )
      )
      ;
  }
}

