import 'dart:async';

import 'package:ao_folio/functions/contact_methods.dart';
import 'package:ao_folio/utilities/appbar.dart';
import 'package:ao_folio/utilities/colors.dart';
import 'package:ao_folio/utilities/footer.dart';
import 'package:ao_folio/utilities/text.dart';
import 'package:flutter/material.dart';

class ProjectsPage extends StatelessWidget {
  const ProjectsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: white,

        // App Bar
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(140),
          child: MyAppBar(
            page: 3,
          ),
        ),

        body: SingleChildScrollView(
          child: Container(
            color: brown,
            child: Column(
              children: [
                // Spacing
                const SizedBox(height: 40),

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
                        'Projects',
                        style: bold.copyWith(fontSize: 24),
                      ),
                    ],
                  ),
                ),

                // Spacing
                const SizedBox(height: 12),

                // View Resume Button
                ElevatedButton(
                    onPressed: () {
                      Contact().contactUrl('https://github.com/c3lxius');
                    },
                    style: TextButton.styleFrom(
                        backgroundColor: blue, foregroundColor: Colors.black),
                    child: const Text(
                      'GO TO GITHUB',
                      style: medium,
                    )),

                // Spacing
                const SizedBox(height: 16),

                // More Text
                Text(
                  'Boasting over four(4) years of experience building and deploying over a dozen Cross-Platform Mobile Apps on stores, I have selected some of my favorite projects to showcase below.',
                  textAlign: TextAlign.center,
                  style: regular.copyWith(fontSize: 18),
                ),

                // Spacing
                const SizedBox(height: 24),

                // Split Box - Project Card
                const ProjCard(
                  title: 'SplitBox  -  2023',
                  role: 'Mobile Developer',
                  button: 'GITHUB',
                  url1: '',
                  url2: 'https://photos.app.goo.gl/cnaSmbvPXani1YjdA',
                  content:
                      'No surprise this comes first as this is my favorite project... for now. \n\nA cross-platform application for bill payments and media services (Netflix, Disney+, PSN etc.) subscription. Implemented many important features such as Paystack API integration for payment services, Authentication, State Management Using Provider and more. Seamlessly collaborated with a team comprising of three other members - a UI/UX Designer, Back-End Developer and a Project Manager',
                ),

                // Spacing
                const SizedBox(height: 40),

                // AOFolio - Project Card
                const ProjCard(
                  title: 'AOFolio  -  2023',
                  role: 'Mobile Developer',
                  url1:
                      'https://play.google.com/store/apps/details?id=com.abdulraqib.folio',
                  url2: 'https://photos.app.goo.gl/XHyZ7LgDYinCnGhV6',
                  content:
                      'This very app you\'re on right now. \n\nA portfolio serves to showcase a developer\'s skill and experience so what better way for a mobile developer to do that than to build it. For this app, i wanted to build something minimalist whilst also flexing some skill (LOL).',
                ),

                // Spacing
                const SizedBox(height: 40),

                // MyGlit - Project Card
                const ProjCard(
                  title: 'MyGlit: Jobs  -  2023',
                  role: 'Team Lead: Mobile Unit',
                  url1:
                      'https://play.google.com/store/apps/details?id=com.myglit.jobs',
                  url2: 'https://photos.app.goo.gl/eA1WTTGAtRdBKnex7',
                  content:
                      'My first app as Team Lead and Mobile Developer for Gratitude India.  \n\nA cross-platform job search application available internationally in four countries (India, Philippines, Malaysia, and Singapore). Implemented many important features such as API integration for Authentication services, Job Search, Job Applications, State Management Using Provider and more. As Team Lead, I gained valuable experience Supporting the entire application lifecycle (concept, design, test, release and support) as well as overseeing and maintaining impeccable standard of code for the project.',
                ),

                // Spacing
                const SizedBox(height: 40),

                // BPO - Project Card
                const ProjCard(
                  title: 'BPO Interview  -  2023',
                  role: 'Team Lead: Mobile Unit',
                  url1:
                      'https://play.google.com/store/apps/details?id=com.Gratitude.BPO',
                  url2: 'https://photos.app.goo.gl/mZAKZbP8A4JzUzKg9',
                  content:
                      'My Second Project as Team Lead and Mobile Developer for Gratitude India. \n\nA simple app for interview prep. Aimed towards job seekers, this app features a typical question - answer format. With thousands of questions across various categories, it\'s a simple but very helpful project.',
                ),

                // Spacing
                const SizedBox(height: 40),

                // MACOSA - Project Card
                const ProjCard(
                  title: 'MACOSA E-library  -  2022',
                  role: 'Freelance Mobile Dev.',
                  url1:
                      'https://play.google.com/store/apps/details?id=com.codekitchen.macosaelibrary',
                  url2: '',
                  content:
                      'My former favorite project. \n\nA cross-platform Digital Library app commisioned by the Mass Comm. Department of the Kwara State University. Implemented many important (and some unneccessary - due to client\'s insistence)  features such as E-book reader, Image gallery, audio player, video player and chat functionality ( i mean seriously... it\'s supposed to be a digital library... sigh). This project allowed me really stretch my wings. I got to dive deeper into using and modifying plugins to fit my own needs. It was a rewarding experience.',
                ),

                // Spacing
                const SizedBox(height: 40),

                //I had some time on my hands on a boring saturday

                // BMI - Project Card
                const ProjCard(
                  title: 'BMI Calc.  -  2019',
                  role: 'Team Lead: Mobile Unit',
                  url1:
                      'https://play.google.com/store/apps/details?id=com.abdulraqib.BMI',
                  url2: 'https://photos.app.goo.gl/rLqk1VbDXWn9urPFA',
                  content:
                      'This one is more of an honorable mention born of sentiment. The first app i ever built and deployed. \n\nA simple BMI Calculator app built over a long boring weekend',
                ),

                // Spacing
                const SizedBox(height: 40),

                // Footer
                const Footer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ProjCard extends StatefulWidget {
  const ProjCard(
      {super.key,
      required this.title,
      required this.role,
      required this.content,
      required this.url1,
      required this.url2,
      this.button = 'GOOGLE PLAY'});
  final String title;
  final String role;
  final String content;
  final String button;
  final String url1;
  final String url2;

  @override
  State<ProjCard> createState() => _ProjCardState();
}

class _ProjCardState extends State<ProjCard> {
  double? width = 10;

  animate() {
    setState(() {
      width = MediaQuery.of(context).size.width;
      // height = 495;
    });
  }

  @override
  void initState() {
    Timer(const Duration(microseconds: 1), () {
      animate();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(seconds: 1),
      width: width,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
      margin: const EdgeInsets.symmetric(horizontal: 16),
      color: white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Title
          Text(
            widget.title,
            style: bold.copyWith(color: blue),
          ),

          // Spacing
          const SizedBox(height: 4),

          // Role
          Text(
            widget.role,
            style: medium.copyWith(fontSize: 18),
          ),

          // Spacing
          const SizedBox(height: 12),

          // Content
          Text(
            widget.content,
            textAlign: TextAlign.justify,
            style: medium,
          ),

          // Spacing
          const SizedBox(height: 16),

          // Resume / Projects Button Row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // Resume Button
              ElevatedButton(
                  onPressed: () => Contact().contactUrl(widget.url1),
                  style: TextButton.styleFrom(
                      backgroundColor: blue, foregroundColor: white),
                  child: Text(
                    widget.button,
                    style: medium.copyWith(fontWeight: FontWeight.w700),
                  )),

              // Projects Button
              ElevatedButton(
                  onPressed: () => Contact().contactUrl(widget.url2),
                  style: TextButton.styleFrom(
                      side: const BorderSide(),
                      backgroundColor: white,
                      foregroundColor: Colors.black),
                  child: const Text(
                    'PREVIEW',
                    style: medium,
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
