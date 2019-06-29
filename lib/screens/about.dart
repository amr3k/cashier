import 'package:flutter/material.dart';
import 'package:sales/widgets/scaffold.dart';

class AboutPage extends StatefulWidget {
  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      title: 'About',
      body: Center(
        child: Text('About Page'),
      ),
    );
  }
}
