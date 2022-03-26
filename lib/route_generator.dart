import 'package:alvys/app/pages/documents.dart';
import 'package:alvys/app/pages/load_details.dart';
import 'package:alvys/app/pages/load_list.dart';
import 'package:alvys/app/pages/auth/phone_verification.dart';
import 'package:alvys/app/pages/auth/sign_in.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'landing.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    //final args = settings.name;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (context) => const Landing());
      case '/signIn':
        return MaterialPageRoute(
            builder: (context) => const SignInPageWidget());
      case '/verifyphone':
        return PageTransition(
            child: const PhoneNumberVerificationPage(),
            type: PageTransitionType.rightToLeft);
      case '/loadlist':
        return PageTransition(
            child: const LoadListPage(), type: PageTransitionType.rightToLeft);
      case '/loaddetails':
        return PageTransition(
            child: const LoadDetailsPage(),
            type: PageTransitionType.rightToLeft);
      case '/loaddocs':
        return PageTransition(
            child: const DocumentsPage(), type: PageTransitionType.rightToLeft);

      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (context) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Error!'),
          centerTitle: true,
        ),
        body: const Center(
          child: Text('Page Not Found.'),
        ),
      );
    });
  }
}
