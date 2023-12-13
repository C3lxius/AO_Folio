import 'dart:async';

import 'package:ao_folio/functions/contact_methods.dart';
import 'package:ao_folio/utilities/appbar.dart';
import 'package:ao_folio/utilities/colors.dart';
import 'package:ao_folio/utilities/footer.dart';
import 'package:ao_folio/utilities/text.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ResumePage extends StatelessWidget {
  ResumePage({super.key});
  final List<String> expContent1 = [
    'Oversees all aspects of the development process, from project planning to coding and maintenance.',
    'Works closely with a team of developers to maintain codebase to the highest standards.',
    'Contributes ideas, tools, and processes to help us move reliably faster and continue innovating.',
    'Develops and maintains highly efficient cross platform mobile applications.'
  ];
  final List<String> expContent2 = [
    'Collaborated across multi-disciplinary teams using Agile development frameworks.',
    'Spearheaded the design and development of multiple cross-platform mobile applications.',
    'Tracked post-deployment bug reports to recognise and resolve trends among user-reported faults and complaints.'
  ];
  final List<String> expContent3 = [
    'Worked closely with colleagues to create, test and deploy high-end mobile products.',
    'Oversaw back-end development using PHP.',
    'Built and maintained Databases for data integrity.',
    'Mastered the ancient arts of coffee-making.'
  ];

  // SKills List
  List skills = [
    'Flutter framework',
    'Mobile app development',
    'Dart programming language',
    'UI/UX design',
    'Version control',
    'Software development lifecycle',
    'Testing & Debugging',
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: white,

        // App Bar
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(140),
          child: MyAppBar(
            page: 2,
          ),
        ),

        // Body
        body: SingleChildScrollView(
          child: Container(
            color: brown,
            child: Column(
              children: [
                // Spacing
                const SizedBox(height: 40),

                // Work Exp Text
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
                        'Work Experience',
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
                      Contact().contactUrl(
                          'https://drive.google.com/drive/folders/1JEpLvAwnsabrwCT066tY97mipY2URMKS?usp=share_link');
                    },
                    style: TextButton.styleFrom(
                        backgroundColor: blue, foregroundColor: Colors.black),
                    child: const Text(
                      'VIEW RESUME',
                      style: medium,
                    )),

                // Experience Card 1
                ExpCard(
                  date: '2023 - present',
                  company: 'Gratitude Inc., India',
                  role: 'Team Lead - Mobile Dev. Unit',
                  expContent: expContent1,
                ),

                // Spacing
                const SizedBox(height: 16),

                // Experience Card 2
                ExpCard(
                  date: '2020 - 2023',
                  company: 'Code Kitchen, Nigeria',
                  role: 'Flutter Engineer',
                  expContent: expContent2,
                ),

                // Spacing
                const SizedBox(height: 16),

                // Experience Card 3
                ExpCard(
                  date: '2018 - 2020',
                  company: 'Too Pasty Digital Hub, Nigeria',
                  role: 'Junior Developer',
                  expContent: expContent3,
                ),

                // Spacing
                const SizedBox(height: 24),

                // Education Text
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
                        'Education',
                        style: bold.copyWith(fontSize: 24),
                      ),
                    ],
                  ),
                ),

                // Spacing
                const SizedBox(height: 24),

                // Edu Card M.Sc
                const EduCard(
                  date: '2019 - 2022',
                  school: 'University of Ibadan',
                  degree: 'M.Sc. Computer Science',
                ),

                // Spacing
                const SizedBox(height: 16),

                // Edu Card B.Sc
                const EduCard(
                  date: '2012 - 2016',
                  school: 'Al-Hikmah University, Ilorin',
                  degree: 'B.Sc. Computer Science',
                ),

                // Spacing
                const SizedBox(height: 32),

                // Divider
                const Divider(
                  color: lightBrown,
                ),

                // Spacing
                const SizedBox(height: 32),

                // SkillSet
                SkillCard(skills: skills),

                // Spacing
                const SizedBox(height: 32),

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

class ExpTile extends StatelessWidget {
  const ExpTile({
    super.key,
    required this.text,
    this.icon = const Padding(
      padding: EdgeInsets.only(top: 8.0),
      child: Icon(
        Icons.fiber_manual_record_rounded,
        size: 8,
      ),
    ),
  });
  final Widget icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Bullet Point
          icon,

          // Spacing
          const SizedBox(width: 12),

          // Text
          Expanded(
              child: Text(text,
                  textAlign: TextAlign.justify,
                  style: regular.copyWith(fontSize: 16))),
        ],
      ),
    );
  }
}

class ExpCard extends StatefulWidget {
  const ExpCard({
    super.key,
    required this.date,
    required this.company,
    required this.role,
    required this.expContent,
  });
  final String date;
  final String company;
  final String role;
  final List<String> expContent;

  @override
  State<ExpCard> createState() => _ExpCardState();
}

class _ExpCardState extends State<ExpCard> {
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
      margin: const EdgeInsets.all(16),
      width: width,
      color: white,
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Date Text
          Text(
            widget.date,
            style: bold.copyWith(color: blue),
          ),

          // Spacing
          const SizedBox(height: 8),

          // Company Text
          Text(
            widget.company,
            style: bold.copyWith(),
          ),

          // Spacing
          const SizedBox(height: 4),

          // Role Text
          Text(
            widget.role,
            style: medium.copyWith(),
          ),

          // Spacing
          const SizedBox(height: 8),

          // Experience Details
          ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: widget.expContent.length,
              itemBuilder: (_, index) =>
                  ExpTile(text: widget.expContent[index])),

          // Spacing
          const SizedBox(height: 24),
        ],
      ),
    );
  }
}

class EduCard extends StatelessWidget {
  const EduCard({
    super.key,
    required this.date,
    required this.school,
    required this.degree,
  });
  final String date;
  final String school;
  final String degree;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      width: double.infinity,
      color: white,
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Date Text
          Text(
            date,
            style: bold.copyWith(color: blue),
          ),

          // Spacing
          const SizedBox(height: 4),

          // Company Text
          Text(
            school,
            style: bold,
          ),

          // Spacing
          const SizedBox(height: 4),

          // Role Text
          Text(
            degree,
            style: medium.copyWith(fontSize: 18),
          ),
        ],
      ),
    );
  }
}

class SkillCard extends StatelessWidget {
  const SkillCard({
    super.key,
    required this.skills,
  });

  final List skills;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: white,
      margin: const EdgeInsets.symmetric(horizontal: 16),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
      child: Column(
        children: [
          // Skills Text
          Center(child: Text('Skill Set', style: bold.copyWith(fontSize: 24))),

          // Skills
          ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: skills.length,
              itemBuilder: (_, index) => ExpTile(
                  // Blue Box
                  icon: Container(
                    margin: const EdgeInsets.only(right: 4, top: 4),
                    width: 16,
                    height: 16,
                    color: blue,
                  ),

                  // Skill Text
                  text: skills[index]))
        ],
      ),
    );
  }
}
