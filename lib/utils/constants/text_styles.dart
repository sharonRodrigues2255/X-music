import 'package:flutter/material.dart';

myfontBold({size = 20.0, weight = FontWeight.bold, color = Colors.white}) {
  return TextStyle(
      fontSize: size,
      fontWeight: FontWeight.bold,
      overflow: TextOverflow.ellipsis,
      color: color);
}

myfontNormal({size = 16.0, weight = FontWeight.normal, color = Colors.white}) {
  return TextStyle(
      fontSize: size,
      fontWeight: FontWeight.bold,
      overflow: TextOverflow.ellipsis,
      color: color);
}
