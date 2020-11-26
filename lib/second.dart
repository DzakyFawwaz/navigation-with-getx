import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_nav/fourth.dart';
import 'package:getx_nav/main.dart';

class SecondPage extends StatefulWidget {
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  var data = "0";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Screen"),
      ),
      body: Center(
        child: Column(
                   
          children: [
            RaisedButton(
                child: Text("Go to fourth page and remove this page"),
                onPressed: () => Get.off(FourthPage())),
            RaisedButton(
                child: Text("Go to home page and remove all page"),
                onPressed: () => Get.back()),
            SizedBox(
              height: 50,
            ),
            Text("Data from fourth page :" + data),
            RaisedButton(
                child: Text("Go to fourth page "),
                onPressed: () async{
                  data = await Get.to(FourthPage());
                  setState(() {
                    
                  });
                }),
          ],
        ),
      ),
    );
  }
}
