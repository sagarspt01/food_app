import 'package:flutter/material.dart';

class ScroableContainer extends StatelessWidget {
  final String imagescroll;
  const ScroableContainer({super.key, required this.imagescroll});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10, top: 10, bottom: 10),
      width: MediaQuery.of(context).size.width - 20,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
      child: Image.asset(
        imagescroll,
        fit: BoxFit.cover,
      ),
    );
  }
}
