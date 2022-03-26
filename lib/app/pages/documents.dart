import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DocumentsPage extends StatefulWidget {
  const DocumentsPage({Key? key}) : super(key: key);

  @override
  State<DocumentsPage> createState() => _DocumentsPageState();
}

class _DocumentsPageState extends State<DocumentsPage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldKey,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          automaticallyImplyLeading: false,
          title: Column(children: [
            Text(
              'Documents',
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.bold,
                fontSize: 28,
                textStyle: const TextStyle(color: Colors.black),
              ),
            ),
          ]),
          centerTitle: true,
          elevation: 0,
        ),
        backgroundColor: const Color(0xFFF1F4F8),
        body: ListView(
          children: const [
            ListTile(
              leading: FlutterLogo(),
              title: Text('Receipt'),
            ),
            ListTile(
              leading: FlutterLogo(),
              title: Text('BOL'),
            ),
          ],
        ));
  }
}
