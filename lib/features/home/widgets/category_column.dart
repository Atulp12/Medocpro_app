import 'package:flutter/material.dart';

class ColumnCategory extends StatelessWidget {
  final String text;
  final IconData icon;
  final Function function;
  const ColumnCategory({super.key, required this.text, required this.icon, required this.function});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () =>function,
          child: Container(
            width: 50,
            height: 50,
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              shadows: const [
                BoxShadow(
                  color: Color(0x3F000000),
                  blurRadius: 4,
                  offset: Offset(0, 4),
                  spreadRadius: 0,
                )
              ],
            ),
            child:  Icon(
              icon,
              size: 26,
            ),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
         Text(text),
      ],
    );
  }
}
