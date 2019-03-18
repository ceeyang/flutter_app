
import 'package:flutter/material.dart';

class Hello extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Text(
        'hello word lala',
        textDirection: TextDirection.ltr,
        style: TextStyle(
          fontSize: 20,
          color: Colors.green,
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
