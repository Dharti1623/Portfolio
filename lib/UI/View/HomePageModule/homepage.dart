import 'package:flutter/material.dart';
import 'package:portfolio/UI/View/Sections/About/View/about_section.dart';
import 'package:portfolio/UI/View/Sections/RecentWork/projects_section.dart';
import 'package:portfolio/UI/View/Sections/Services/service_section.dart';
import 'package:portfolio/UI/View/Sections/Top/View/top_section.dart';
import 'package:portfolio/Utils/Constants/style_constant.dart';
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // TopSection(),
            // SizedBox(height: AppStyle.dDefaultPadding * 2),
            // AboutSection(),
            // ServiceSection(),
            ProjectsSection(),
            SizedBox(height: AppStyle.dDefaultPadding),
            // ContactSection(),
          ],
        ),
      ),
    );
  }
}
