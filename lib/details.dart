import 'package:flutter/material.dart';
class Deta extends StatelessWidget {
  final int index;
  Deta(this.index);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("$index"),
    );
  }
}
