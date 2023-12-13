import 'package:ao_folio/utilities/colors.dart';
import 'package:ao_folio/utilities/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

class Footer extends StatelessWidget {
  const Footer({
    super.key,
  });
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
      path: 'abdulraqib.olaynaju@gmail.com',
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

  @override
  Widget build(BuildContext context) {
    return Container(
      color: white,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Contact Me Text
          const Text('Wanna work together? Contact me below...',
              // textAlign: TextAlign.center,
              style: medium),

          // Spacing
          const SizedBox(height: 8),

          Container(
            color: white,
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Call
                InkWell(
                  onTap: contactPhone,
                  child: SvgPicture.asset(
                    'assets/images/call.svg',
                    width: 24,
                  ),
                ),

                // WhatsApp
                InkWell(
                  onTap: () {
                    contactUrl('https://wa.link/z7v8d4');
                  },
                  child: SvgPicture.asset(
                    'assets/images/wa.svg',
                    width: 24,
                  ),
                ),

                // Email
                InkWell(
                  onTap: contactMail,
                  child: SvgPicture.asset(
                    'assets/images/mail.svg',
                    width: 24,
                    color: Colors.deepOrangeAccent,
                  ),
                ),

                // InstaGram
                InkWell(
                  onTap: () {
                    contactUrl('https://www.instagram.com/cel_xius');
                  },
                  child: SvgPicture.asset(
                    'assets/images/ig.svg',
                    width: 24,
                    color: Colors.pinkAccent,
                  ),
                ),

                // LinkedIn
                InkWell(
                  onTap: () {
                    contactUrl(
                        'https://www.linkedin.com/in/abdulraqib-olayanju-998426191');
                  },
                  child: SvgPicture.asset(
                    'assets/images/in.svg',
                    width: 24,
                  ),
                ),
              ],
            ),
          ),

          // Spacing
          const SizedBox(height: 8),

          // Copyright Text
          const Text(
            '© 2023 by Abdulraqib Olayanju',
            style: medium,
          ),

          // Spacing
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
