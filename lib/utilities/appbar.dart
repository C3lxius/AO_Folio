//
// App Bar
//
import 'package:ao_folio/functions/nav_methods.dart';
import 'package:ao_folio/pages/side_nav.dart';
import 'package:ao_folio/utilities/colors.dart';
import 'package:ao_folio/utilities/text.dart';
import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({
    super.key,
    required this.page,
  });
  final int page;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: white,
      padding: const EdgeInsets.fromLTRB(24, 24, 16, 16),
      // color: lightBrown,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 8),
            width: 18,
            height: 18,
            color: blue,
          ),

          // Spacing
          const SizedBox(width: 16),

          Expanded(
            child: InkWell(
              onTap: () => Nav().goToHome(context),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Title Text
                  Text(
                    'Abdulraqib O.',
                    style: bold.copyWith(fontSize: 24),
                  ),

                  // Spacing
                  const SizedBox(height: 4),

                  // Role Text
                  Text('Mobile Developer',
                      style: regular.copyWith(fontSize: 18))
                ],
              ),
            ),
          ),

          // Menu Button
          InkWell(
              onTap: () => showNav(context, page),
              child: const Icon(
                Icons.sort,
                size: 54,
                color: blue,
              ))
        ],
      ),
    );
  }
}
