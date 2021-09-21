// ignore_for_file: file_names

import 'package:flutter/material.dart';

class About extends StatefulWidget {
  const About({ Key? key }) : super(key: key);

    static const routeName = '/about';

  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff373737),
        appBar: AppBar(
        title: const Text('About',style: TextStyle(color: Colors.white),),
        backgroundColor: Color(0xff373737),
      ),
        body: Container()
      );
  }
}



