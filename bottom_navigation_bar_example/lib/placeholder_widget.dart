import 'package:flutter/material.dart';

// This is a simple widget that acts as placeholder
// Replace it with your custom page
class PlaceholderWidget extends StatelessWidget {
  final String text;

  PlaceholderWidget(this.text);

  @override
  Widget build(BuildContext context) {
    return Center(child: Text(text));
  }
}
