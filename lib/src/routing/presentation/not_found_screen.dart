import 'package:flutter/material.dart';
import 'package:mobile_app_starter/src/shared/widgets/empty_placeholder_widget.dart';

class NotFoundScreen extends StatelessWidget {
  const NotFoundScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const EmptyPlaceholderWidget(
        message: '404 - Page not found!',
      ),
    );
  }
}
