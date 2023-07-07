import 'package:flutter/material.dart';
import 'package:portfolio/Utils/Constants/image_constant.dart';

class Service {
  final int id;
  final String title, image;
  final Color color;

  Service({required this.id, required this.title, required this.image, required this.color});
}

// For demo list of service
List<Service> services = [
  Service(
    id: 1,
    title: "Flutter",
    image: AppImages.flutterImage,
    color: Color(0xffd7f8f3),
  ),
  Service(
    id: 2,
    title: "Vue.js",
    image: AppImages.vueJsImage,
    color: Color(0xFFE4FFC7),
  ),
  Service(
    id: 3,
    title: "Laravel",
    image: AppImages.laravelImage,
    color: Color(0xfff8d7d5),
  ),
  Service(
    id: 4,
    title: "Dart",
    image: AppImages.dartImage,
    color: Color(0xffd7edf8),
  ),
];