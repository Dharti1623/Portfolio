import 'package:portfolio/Utils/Constants/image_constant.dart';

class ProjectDetails {
  final int id;
  String title;
  String description;
  String techStack;
  String database;
  String role;
  String category;
  final String image;

  ProjectDetails({
    required this.id,
    required this.title,
    required this.description,
    required this.techStack,
    required this.database,
    required this.role,
    required this.category,
    required this.image,
  });
}

// Demo List of my works
List<ProjectDetails> projectDetails = [
  ProjectDetails(
    id: 1,
    title: " Style Revolver  ",
    description:
        'It is a web application from where customer can purchase various designer cloths & customer can also give customized order by taking appointment.',
    techStack: 'PHP-Laravel(front-end+admin panel)',
    database: 'MySQL',
    role: 'Project development, testing website',
    category: "E-Commerce",
    image: AppImages.work1Image,
  ),
  ProjectDetails(
    id: 2,
    title: "     Stocard     ",
    description: 'This Application provides the facility to digitize your card in one app. \ncustomers can add store and in particular stores they can add their loyalty cards. \nSo in store customers can get scanned their cards by phone and take the benefit of rewards.\nCustomers can also make payment from this application',
    techStack: 'PHP-Laravel(API)',
    database: 'MySQL',
    role: 'Project development, testing website',
    category: "Loyalty card management",
    image: AppImages.work2Image,
  ),
  ProjectDetails(
    id: 3,
    title: "Women Empowerment",
    description: 'This app was developed in flutter for android and iOS support. \nIt is based on rising for women who wants to start there mini startup, loans are provided to the women as per there need. It is a fixed cost app.',
    techStack: 'Flutter',
    database: '-',
    role: 'Project development, testing website',
    category: "NGO",
    image: AppImages.work3Image,
  ),
  ProjectDetails(
    id: 4,
    title: "  Treasure Hunt  ",
    description: 'This app was developed in flutter for android and iOS support. \nIt\'s main purpose was to scan the QR code and show the animated model developed in the blender and it will perform TTS and tell the clue for next QR.',
    techStack: 'Flutter, Laravel(API)',
    database: 'MySQL',
    role: 'Project development, testing website',
    category: "AR Game",
    image: AppImages.work4Image,
  ),
  ProjectDetails(
    id: 5,
    title: "       Mix       ",
    description: 'It is a demo app which includes demo og payment gateway,Google ad sense,firebase auth ,google sign-in/sign-up and beautiful music app design.',
    techStack: 'Flutter',
    database: '-',
    role: 'Project development, testing website',
    category: "Demo Project",
    image: AppImages.work5Image,
  ),
  ProjectDetails(
    id: 6,
    title: "Pretty_button",
    description: 'pretty_button a pretty and customizable 3D button for your flutter project with minimal design and highly customizable.\nIt can be use as a 3d button and also you can customize it.\nYou can also make button disable using isDisable property.\nyou can find this from : https://pub.dev/packages/pretty_button',
    techStack: 'Flutter',
    database: '-',
    role: 'Project development, testing website',
    category: "Flutter package",
    image: AppImages.work6Image,
  ),
];

