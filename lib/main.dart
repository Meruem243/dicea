// Entrypoint: keep `main.dart` very small. The app itself is defined
// in `lib/src/app.dart` to keep responsibilities separated.
import 'package:flutter/material.dart';
import 'src/app.dart';

void main() => runApp(const MyApp());
