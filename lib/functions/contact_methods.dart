import 'package:url_launcher/url_launcher.dart';

class Contact {
  contactUrl(String url) async {
    final uri = Uri.parse(url);

    await launchUrl(
      uri,
      mode: LaunchMode.externalApplication,
    );
  }

  contactMail() async {
    final Uri emailLaunchUri = Uri(
      scheme: 'mailto',
      path: 'abdulraqib.olayanju@gmail.com',
    );

    await launchUrl(emailLaunchUri);
  }

  contactPhone() async {
    final Uri phoneLaunchUri = Uri(
      scheme: 'tel',
      path: '08148816611',
    );
    await launchUrl(phoneLaunchUri);
  }
}
