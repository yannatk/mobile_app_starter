import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile_app_starter/src/constants/app_colors.dart';
import 'package:mobile_app_starter/src/constants/app_sizes.dart';
import 'package:mobile_app_starter/src/features/authentication/presentation/utils/base_validators.dart';
import 'package:mobile_app_starter/src/localization/string_hardcoded.dart';
import 'package:mobile_app_starter/src/routing/app_router.dart';
import 'package:mobile_app_starter/src/shared/widgets/primary_button.dart';

class EditMyInformationForm extends ConsumerStatefulWidget {
  const EditMyInformationForm({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _EditMyInformationFormState();
}

class _EditMyInformationFormState extends ConsumerState<EditMyInformationForm>
    with BaseValidators {
  final _formKey = GlobalKey<FormState>();
  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();

  String get _firstName => _firstNameController.text.trim();
  String get _lastName => _lastNameController.text.trim();

  var _submitted = false;

  @override
  void dispose() {
    super.dispose();

    _firstNameController.dispose();
    _lastNameController.dispose();
  }

  Future<void> onSave() async {
    setState(() => _submitted = true);

    if (_formKey.currentState!.validate()) {
      debugPrint('$_firstName, $_lastName');
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            'Info updated successfully'.hardcoded,
            style: const TextStyle(color: AppColors.white),
          ),
          backgroundColor: AppColors.green,
        ),
      );

      context.goNamed(AppRoute.accountScreen.name);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            autocorrect: false,
            enableSuggestions: false,
            controller: _lastNameController,
            decoration: InputDecoration(
              labelText: 'Last name'.hardcoded,
              labelStyle: const TextStyle(color: AppColors.grey),
              focusedBorder: const UnderlineInputBorder(
                borderSide: BorderSide(color: AppColors.grey),
              ),
              enabledBorder: const UnderlineInputBorder(
                borderSide: BorderSide(color: AppColors.grey),
              ),
            ),
            keyboardType: TextInputType.text,
            autovalidateMode: AutovalidateMode.always,
            validator: (lastName) =>
                !_submitted ? null : fieldErrorText(lastName ?? '', 'Nom'),
            textInputAction: TextInputAction.next,
          ),
          TextFormField(
            autocorrect: false,
            enableSuggestions: false,
            controller: _firstNameController,
            decoration: InputDecoration(
              labelText: 'First name'.hardcoded,
              labelStyle: const TextStyle(color: AppColors.grey),
              focusedBorder: const UnderlineInputBorder(
                borderSide: BorderSide(color: AppColors.grey),
              ),
              enabledBorder: const UnderlineInputBorder(
                borderSide: BorderSide(color: AppColors.grey),
              ),
            ),
            keyboardType: TextInputType.text,
            autovalidateMode: AutovalidateMode.always,
            validator: (firstName) => !_submitted
                ? null
                : fieldErrorText(firstName ?? '', 'First name'.hardcoded),
            textInputAction: TextInputAction.done,
          ),
          gapH32,
          PrimaryButton(
            text: 'Save'.hardcoded,
            onPressed: onSave,
          ),
        ],
      ),
    );
  }
}
