import 'package:cafe_app/presentation/pages/home_page.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
     MaterialApp(
      home: Scaffold(
        body: const HomePage(),
      ),
    ),
  );
}
