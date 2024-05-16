import 'package:flutter/material.dart';
import 'package:mobile_app_starter/src/constants/app_sizes.dart';
import 'package:mobile_app_starter/src/features/account/presentation/widgets/edit_my_information_form.dart';

class EditMyInformationScreen extends StatefulWidget {
  const EditMyInformationScreen({super.key});

  @override
  State<EditMyInformationScreen> createState() =>
      _EditMyInformationScreenState();
}

class _EditMyInformationScreenState extends State<EditMyInformationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Modifier Mes Informations'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: Sizes.p16, vertical: Sizes.p16),
        child: ListView(
          children: const [
            EditMyInformationForm(),
          ],
        ),
      ),
    );
  }
}
