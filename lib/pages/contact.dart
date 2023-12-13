import 'dart:async';

import 'package:ao_folio/functions/contact_methods.dart';
import 'package:ao_folio/utilities/appbar.dart';
import 'package:ao_folio/utilities/colors.dart';
import 'package:ao_folio/utilities/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: brown,

      // App Bar
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(140),
        child: MyAppBar(
          page: 4,
        ),
      ),

      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(16),
          width: double.infinity,
          child: Column(
            children: [
              // Spacing
              const SizedBox(height: 24),

              // Project Text
              Center(
                child: Wrap(
                  children: [
                    // Blue Box
                    Container(
                      margin: const EdgeInsets.only(top: 8),
                      width: 18,
                      height: 18,
                      color: blue,
                    ),

                    // Spacing
                    const SizedBox(width: 12),

                    // Text
                    Text(
                      'Get in touch',
                      style: bold.copyWith(fontSize: 24),
                    ),
                  ],
                ),
              ),

              // Spacing
              const SizedBox(height: 24),

              // Contact Card
              const ContactCard(),
            ],
          ),
        ),
      ),
    ));
  }
}

class ContactCard extends StatefulWidget {
  const ContactCard({
    super.key,
  });

  @override
  State<ContactCard> createState() => _ContactCardState();
}

class _ContactCardState extends State<ContactCard> {
  double? width = 10;
  // double? height = 100;

  animate() {
    setState(() {
      width = MediaQuery.of(context).size.width;
      // height = 495;
    });
  }

  @override
  void initState() {
    // animate();
    Timer(const Duration(microseconds: 1), () {
      animate();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // animate();
    return AnimatedContainer(
      duration: const Duration(seconds: 1),
      color: white,
      width: width,
      // height: height,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
      child: Column(
        children: [
          // Text
          InkWell(
            onTap: animate,
            child: const Text(
              'Want to work together to create some awesomeness? Reach out to me on any of the following platforms.',
              textAlign: TextAlign.center,
              style: medium,
            ),
          ),

          // Spacing
          const SizedBox(height: 16),

          // Call Button
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: ElevatedButton(
                onPressed: Contact().contactPhone,
                style: TextButton.styleFrom(
                    backgroundColor: white, foregroundColor: dark),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Button Text
                      Text(
                        'Dial Number',
                        style: medium.copyWith(fontWeight: FontWeight.w800),
                      ),

                      // WA ICON
                      SvgPicture.asset(
                        'assets/images/call.svg',
                        width: 24,
                      ),
                    ],
                  ),
                )),
          ),

          // Spacing
          const SizedBox(height: 16),

          // WhatsApp Button
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: ElevatedButton(
                onPressed: () {
                  Contact().contactUrl('https://wa.link/z7v8d4');
                },
                style: TextButton.styleFrom(
                    backgroundColor: white,
                    foregroundColor: Colors.greenAccent),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Button Text
                      Text(
                        'WhatsApp',
                        style: medium.copyWith(fontWeight: FontWeight.w800),
                      ),

                      // WA ICON
                      SvgPicture.asset(
                        'assets/images/wa.svg',
                        width: 24,
                      ),
                    ],
                  ),
                )),
          ),

          // Spacing
          const SizedBox(height: 16),

          // Mail Button
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: ElevatedButton(
                onPressed: Contact().contactMail,
                style: TextButton.styleFrom(
                    backgroundColor: white,
                    foregroundColor: Colors.deepOrangeAccent),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Button Text
                      Text(
                        'Send a mail',
                        style: medium.copyWith(fontWeight: FontWeight.w800),
                      ),

                      // WA ICON
                      SvgPicture.asset(
                        'assets/images/mail.svg',
                        width: 24,
                        color: Colors.deepOrangeAccent,
                      ),
                    ],
                  ),
                )),
          ),

          // Spacing
          const SizedBox(height: 16),

          // Insta Button
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: ElevatedButton(
                onPressed: () {
                  Contact().contactUrl('https://www.instagram.com/cel_xius');
                },
                style: TextButton.styleFrom(
                    backgroundColor: white, foregroundColor: Colors.pinkAccent),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Button Text
                      Text(
                        'InstaGram',
                        style: medium.copyWith(fontWeight: FontWeight.w800),
                      ),

                      // WA ICON
                      SvgPicture.asset(
                        'assets/images/ig.svg',
                        width: 24,
                        color: Colors.pinkAccent,
                      ),
                    ],
                  ),
                )),
          ),

          // Spacing
          const SizedBox(height: 16),

          // LinkedIn Button
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: ElevatedButton(
                onPressed: () {
                  Contact().contactUrl(
                      'https://www.linkedin.com/in/abdulraqib-olayanju-998426191');
                },
                style: TextButton.styleFrom(
                    backgroundColor: white, foregroundColor: blue),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Button Text
                      Text(
                        'LinkedIn',
                        style: medium.copyWith(fontWeight: FontWeight.w800),
                      ),

                      // WA ICON
                      SvgPicture.asset(
                        'assets/images/in.svg',
                        width: 24,
                      ),
                    ],
                  ),
                )),
          ),
        ],
      ),
    );
  }
}
