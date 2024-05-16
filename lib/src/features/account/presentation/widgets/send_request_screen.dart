import 'dart:io';

import 'package:flutter/material.dart';
import 'package:mobile_app_starter/src/localization/string_hardcoded.dart';
import 'package:mobile_app_starter/src/shared/widgets/app_list_tile.dart';
import 'package:url_launcher/url_launcher.dart';

class SendRequestScreen extends StatelessWidget {
  const SendRequestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    String getPlatform() {
      if (Platform.isAndroid) {
        return 'Android';
      } else if (Platform.isIOS) {
        return 'iOS';
      }

      return 'Your platform is not supported';
    }

    Future<void> sendRequest({required String subject}) async {
      var url =
          Uri.parse('mailto:contact@app.fr?subject=$subject - $getPlatform()');
      if (!await canLaunchUrl(url)) {
        throw 'Could not launch $url';
      }
      await launchUrl(url);
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Send Request'.hardcoded),
      ),
      body: Column(
        children: [
          AppListTile(
            title: 'Send a feedback'.hardcoded,
            onTap: () => sendRequest(subject: 'Send a feedback'.hardcoded),
          ),
          AppListTile(
            title: 'Request a new feature'.hardcoded,
            onTap: () =>
                sendRequest(subject: 'Request a new feature'.hardcoded),
          ),
          AppListTile(
            title: 'Report a bug'.hardcoded,
            onTap: () => sendRequest(subject: 'Report a bug'.hardcoded),
          ),
        ],
      ),
    );
  }
}
