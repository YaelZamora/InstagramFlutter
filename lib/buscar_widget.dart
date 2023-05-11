import 'package:flutter/material.dart';

class Buscar extends StatelessWidget {
  const Buscar({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
      ),
      clipBehavior: Clip.hardEdge,
      margin: const EdgeInsets.all(8.0),
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.grey.shade300,
          border: InputBorder.none,
          hintText: text,
          prefixIcon: const Icon(Icons.search),
        ),
      ),
    );
  }
}
