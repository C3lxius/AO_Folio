import 'package:ao_folio/functions/nav_methods.dart';
import 'package:ao_folio/utilities/colors.dart';
import 'package:ao_folio/utilities/text.dart';
import 'package:flutter/material.dart';

showNav(BuildContext context, int page) {
  return showModalBottomSheet(
    useSafeArea: true,
    isScrollControlled: true,
    backgroundColor: lightBrown,
    context: context,
    shape: const BeveledRectangleBorder(),
    builder: (_) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 40),
        child: Column(
          children: [
            // Close Button
            Align(
              alignment: Alignment.topRight,
              child: IconButton(
                onPressed: () => Navigator.pop(context),
                iconSize: 48,
                color: dark,
                icon: const Icon(Icons.close),
              ),
            ),

            // Spacing
            const SizedBox(height: 60),

            // Home Text
            InkWell(
              onTap: () => Nav().goToHome(context),
              child: Text(
                'HOME',
                style:
                    bold.copyWith(fontSize: 24, color: page == 1 ? blue : null),
              ),
            ),

            // Spacing
            const SizedBox(height: 32),

            // Resume Text
            InkWell(
              onTap: () => Nav().goToResume(context),
              child: Text(
                'RESUME',
                style:
                    bold.copyWith(fontSize: 24, color: page == 2 ? blue : null),
              ),
            ),

            // Spacing
            const SizedBox(height: 32),

            // Projects Text
            InkWell(
              onTap: () => Nav().goToProjects(context),
              child: Text(
                'PROJECTS',
                style:
                    bold.copyWith(fontSize: 24, color: page == 3 ? blue : null),
              ),
            ),

            // Spacing
            const SizedBox(height: 32),

            // Projects Text
            InkWell(
              onTap: () => Nav().goToContact(context),
              child: Text(
                'CONTACTS',
                style:
                    bold.copyWith(fontSize: 24, color: page == 4 ? blue : null),
              ),
            ),
          ],
        ),
      );
    },
  );
}
