import 'package:flutter/material.dart';

class ContentTextField extends StatefulWidget {
  final TextEditingController controller;
  const ContentTextField({super.key, required this.controller});

  @override
  State<ContentTextField> createState() => _ContentTextField();
}

class _ContentTextField extends State<ContentTextField> {
  
  final FocusNode _focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return TextField(
       focusNode: _focusNode,
      controller:  widget.controller,
      maxLines: null,

      style: const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        height: 1.3,
      ),
      decoration: InputDecoration(
        border: InputBorder.none,
          hintText: 'Write Something..........',
          hintStyle: Theme.of(context).textTheme.bodyMedium,
           contentPadding: EdgeInsets.only(left: 15),
      )
      )
      ;
  }
}

