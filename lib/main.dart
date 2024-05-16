import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mobile_app_starter/src/app.dart';

void main() async {
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}
