import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FourthPage extends StatefulWidget {
  @override
  _FourthPageState createState() => _FourthPageState();
}

class _FourthPageState extends State<FourthPage> {
  var hello = "hello";

  var world = 'world';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Fourth Screen"),
      ),
      body: Center(
        child: Column(
                   
          children: [
            RaisedButton(
                child: Text("Return text " + hello), onPressed: () => Get.back(result: hello)),
            RaisedButton(
                child: Text("Return text " + world), onPressed: () => Get.back(result: world))
          ],
        ),
      ),
    );
  }
}
