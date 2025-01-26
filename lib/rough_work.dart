import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RoughWork extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Practice'),
      ),
      body:

      TextField(
        decoration: InputDecoration(
          filled: true,              // Enables background color
          fillColor: Colors.grey[200], // Background color
          border: OutlineInputBorder(
            // Adds a border
            borderRadius: BorderRadius.circular(31),
            borderSide: BorderSide.none,  // Removes default border
          ),
          hintText: 'Enter text',
        ),
      )

    );
  }
}