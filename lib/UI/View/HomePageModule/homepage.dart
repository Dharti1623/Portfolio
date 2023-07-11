import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/UI/View/Sections/About/View/about_section.dart';
import 'package:portfolio/UI/View/Sections/Contact/contact_section.dart';
import 'package:portfolio/UI/View/Sections/RecentWork/project_detail_data.dart';
import 'package:portfolio/UI/View/Sections/RecentWork/projects_section.dart';
import 'package:portfolio/UI/View/Sections/Services/service_section.dart';
import 'package:portfolio/UI/View/Sections/Top/View/top_section.dart';
import 'package:portfolio/Utils/Constants/style_constant.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

Rx<AutoScrollController> controller = AutoScrollController().obs;
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          controller: controller.value,
          child: Column(
            children: [
              _wrapScrollTag(child: const TopSection(),index: 0),
              const SizedBox(height: AppStyle.dDefaultPadding * 2),
              _wrapScrollTag(child: const AboutSection(), index: 1),
              _wrapScrollTag(child: const ProjectsSection(), index: 2),
              _wrapScrollTag(child: const ServiceSection(), index: 3),
              const SizedBox(height: AppStyle.dDefaultPadding),
              _wrapScrollTag(child: const ContactSection(), index: 4),
            ],
          ),
        ),
      ),
    );
  }

  Widget _wrapScrollTag({required int index, required Widget child}) =>
      AutoScrollTag(
        key: ValueKey(index),
        controller: controller.value,
        index: index,
        highlightColor: Colors.black.withOpacity(0.1),
        child: child,
      );
}
