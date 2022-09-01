import 'package:flutter/material.dart';

class Circle extends StatelessWidget {
  final bool? isWhite;

  const Circle({super.key, this.isWhite});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(3),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          width: 2.0,
          color: isWhite == null ? Colors.white : const Color(0xFF8ACCF7),
        ),
      ),
    );
  }
}
