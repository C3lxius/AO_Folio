import 'package:ao_folio/pages/contact.dart';
import 'package:ao_folio/pages/home.dart';
import 'package:ao_folio/pages/projects.dart';
import 'package:ao_folio/pages/resume.dart';
import 'package:flutter/material.dart';

class Nav {
  goToHome(BuildContext context) {
    Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: (_) => const HomePage()));
  }

  goToResume(BuildContext context) {
    Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: (_) => ResumePage()));
  }

  goToProjects(BuildContext context) {
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => const ProjectsPage()));
  }

  goToContact(BuildContext context) {
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => const ContactPage()));
  }
}
