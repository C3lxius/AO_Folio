import 'package:ao_folio/functions/contact_methods.dart';
import 'package:ao_folio/pages/projects.dart';
import 'package:ao_folio/pages/resume.dart';
import 'package:ao_folio/utilities/appbar.dart';
import 'package:ao_folio/utilities/colors.dart';
import 'package:ao_folio/utilities/footer.dart';
import 'package:ao_folio/utilities/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: white,

        // App Bar
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(140),
          child: MyAppBar(
            page: 1,
          ),
        ),

        // Body
        body: SingleChildScrollView(
          child: Column(
            children: [
              // Floater Card & White BG
              Stack(
                children: [
                  // White BG
                  Container(
                    height: 250,
                    color: white,
                  ),

                  // Brown BG
                  Container(
                    margin: const EdgeInsets.only(top: 220),
                    height: 240,
                    color: brown,
                  ),

                  // Floating Card
                  const FloatingCard(),
                ],
              ),

              // Introductory Texts
              const IntroText(),

              // Footer Row
              const Footer(),
            ],
          ),
        ),
      ),
    );
  }
}

//
//Floating Card
//
class FloatingCard extends StatelessWidget {
  const FloatingCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Card(
        elevation: 2.0,
        child: Container(
          //
          // padding: const EdgeInsets.all(16),
          height: 420,
          width: double.infinity,
          color: lightBrown,

          //

          // Column
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Spacing
              const SizedBox(height: 8),

              // Circle Avatar
              const CircleAvatar(
                radius: 70,
                backgroundColor: blue,
                backgroundImage: AssetImage('assets/images/man.png'),
              ),

              // Name Text
              Text(
                'Abdulraqib Olayanju',
                style: bold.copyWith(fontSize: 24),
              ),

              // Spacing
              // const SizedBox(height: 16),

              // Divider
              const SizedBox(
                width: 85,
                child: Divider(
                  color: blue,
                  thickness: 2.5,
                ),
              ),

              // Spacing
              // const SizedBox(height: 16),

              // Resume / Projects Button Row
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Resume Button
                  ElevatedButton(
                      onPressed: () => Navigator.of(context).push(
                          MaterialPageRoute(builder: (_) => ResumePage())),
                      style: TextButton.styleFrom(
                          backgroundColor: blue, foregroundColor: white),
                      child: Text(
                        'RESUME',
                        style: medium.copyWith(fontWeight: FontWeight.w700),
                      )),

                  // Spacing
                  const SizedBox(width: 16),

                  // Projects Button
                  ElevatedButton(
                      onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => const ProjectsPage())),
                      style: TextButton.styleFrom(
                          side: const BorderSide(),
                          backgroundColor: lightBrown,
                          foregroundColor: Colors.black),
                      child: const Text(
                        'PROJECTS',
                        style: medium,
                      )),
                ],
              ),

              // Spacing
              const SizedBox(),

              // Socials Row
              Container(
                color: white,
                padding: const EdgeInsets.symmetric(vertical: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // WhatsApp
                    InkWell(
                      onTap: () =>
                          Contact().contactUrl('https://wa.link/z7v8d4'),
                      child: SvgPicture.asset(
                        'assets/images/wa.svg',
                        width: 24,
                      ),
                    ),

                    // Mail
                    InkWell(
                      onTap: Contact().contactMail,
                      child: SvgPicture.asset(
                        'assets/images/mail.svg',
                        width: 24,
                        color: Colors.deepOrangeAccent,
                      ),
                    ),

                    // InstaGram
                    InkWell(
                      onTap: () => Contact()
                          .contactUrl('https://www.instagram.com/cel_xius'),
                      child: SvgPicture.asset(
                        'assets/images/ig.svg',
                        width: 24,
                        color: Colors.pinkAccent,
                      ),
                    ),

                    // LinkedIN
                    InkWell(
                      onTap: () => Contact().contactUrl(
                          'https://www.linkedin.com/in/abdulraqib-olayanju-998426191'),
                      child: SvgPicture.asset(
                        'assets/images/in.svg',
                        width: 24,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//
// Introductory Texts
//
class IntroText extends StatelessWidget {
  const IntroText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
      color: brown,
      // height: 200,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Big Hello
          Text(
            'Hello',
            style: bold.copyWith(fontSize: 26),
          ),

          // Spacing
          const SizedBox(height: 12),

          // Medium text
          Text(
            'Here\'s who I am and what I do',
            style: medium.copyWith(fontSize: 22),
          ),

          // Spacing
          const SizedBox(height: 16),

          // Medium text
          Text(
            'I am Abdulraqib Olayanju, a Flutter developer with over Four(4) years of experience building cross-platform mobile applications. I specialize in creating user-friendly interfaces and building scalable applications. I believe that every business deserves an app that works flawlessly on all devices and meets the needs of their users. With my expertise in Flutter and having built over a dozen apps, I can help you achieve that. Let\'s work together to build your dream app.',
            textAlign: TextAlign.justify,
            style: regular.copyWith(fontSize: 18),
          ),

          // Spacing
          const SizedBox(height: 40),
        ],
      ),
    );
  }
}
