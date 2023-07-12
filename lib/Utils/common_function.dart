import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

getStatusBarHeight(context) {
  return MediaQuery.of(context).viewPadding.top;
}

launchLinkedin() async {
  final Uri url =Uri.parse('https://www.linkedin.com/in/dhartichauhan');
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}

launchFacebook() async {
  final Uri url =Uri.parse('https://www.facebook.com/barby.dall.56');
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}
launchGit() async {
  final Uri url =Uri.parse('https://github.com/dharti1623');
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}


hireMe() async {
  final Uri url =Uri.parse('https://www.linkedin.com/in/dhartichauhan');
  if (await canLaunchUrl(url)) {
  await launchUrl(url);
  } else {
  throw 'Could not launch $url';
  }
}


downLoadCv() async {
  final Uri url =Uri.parse('https://drive.google.com/file/d/1w4qoE5ujA5U7sO-C65cP2TllSEBMbSsc/view?usp=sharing');
  if (await canLaunchUrl(url)) {
  await launchUrl(url);
  } else {
  throw 'Could not launch $url';
  }
}