import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class Landing extends StatefulWidget {
  const Landing({Key? key}) : super(key: key);

  @override
  _LandingState createState() => _LandingState();
}

class _LandingState extends State<Landing> {
  @override
  void initState() {
    _getLoginData();
    super.initState();
  }

  Future<void> _getLoginData() async {
    const storage = FlutterSecureStorage();

    var token = await storage.read(key: 'appToken');
    if (token != null) {
      Navigator.pushNamedAndRemoveUntil(
          context, '/home', ModalRoute.withName('/home'));
      debugPrint("Home");
    } else {
      Navigator.pushNamedAndRemoveUntil(
          context, '/signIn', ModalRoute.withName('/signIn'));
      debugPrint("SignIn");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
