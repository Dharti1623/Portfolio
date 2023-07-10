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
    title: "Style Revolver",
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
    title: "Stocard",
    description: 'This Application provides the facility to digitize your card in one app. customers can add store and in particular stores they can add their loyalty cards. So in store customers can get scanned their cards by phone and take the benefit of rewards.Customers can also make payment from this application',
    techStack: 'PHP-Laravel(API)',
    database: '-',
    role: 'Project development, testing website',
    category: "Loyalty card \nmanagement",
    image: AppImages.work2Image,
  ),
  ProjectDetails(
    id: 3,
    title: "Women \nEmpowerment",
    description: 'This app was developed in flutter for android and iOS support. It is based on rising for women who wants to start there mini startup, loans are provided to the women as per there need. It is a fixed cost app.',
    techStack: 'Flutter',
    database: '-',
    role: 'Project development, testing website',
    category: "NGO",
    image: AppImages.work3Image,
  ),
  ProjectDetails(
    id: 4,
    title: "Treasure Hunt",
    description: 'This app was developed in flutter for android and iOS support. It\'s main purpose was to scan the QR code and show the animated model developed in the blender and it will perform TTS and tell the clue for next QR.',
    techStack: 'Flutter,',
    database: '-',
    role: 'Project development, testing website',
    category: "AR Game",
    image: AppImages.work4Image,
  ),
  ProjectDetails(
    id: 5,
    title: "Mix",
    description: 'It is a demo app which includes demo og payment gateway,Google ad sense,firebase auth ,google sign-in/sign-up and beautiful music app design.',
    techStack: 'Flutter',
    database: '-',
    role: 'Project development, testing website',
    category: "Demo Project",
    image: AppImages.work5Image,
  ),
];

