import 'package:dars1/mashina.dart';
import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  State<MyWidget> createState() => _MyWidgetState();
}
 
class _MyWidgetState extends State<MyWidget> {


  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 12),
      () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) =>  MashinaPage(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Home Page"),
      ),
      body: Container(
          child: TextButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => MashinaPage()));
        },
        child: const Text(""),
      )),
    );
  }
}
