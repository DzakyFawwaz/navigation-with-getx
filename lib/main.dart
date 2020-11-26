import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'second.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Home();
  }
}

class Home extends StatelessWidget {
  _showSnackbar() {
    Get.snackbar("This is Snackbar with GetX", "Super easy to build");
  }

  _showDialog() {
    Get.defaultDialog(
        title: "This is Dialog with GetX",
        content: Text("Super easy to build"));
  }

  _showBottomSheet() {
    Get.bottomSheet(Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Center(
          child: Column(
            children: [
              Text("This is Bottom Sheet with GetX"),
              Text("Super easy to build")
            ],
          ),
        ),
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("GetX Navigation"),
        ),
        body: Center(
          child: Column(
            children: [
              RaisedButton(
                  child: Text("Go to second page"),
                  onPressed: () => Get.to(SecondPage())),
              RaisedButton(
                  child: Text("Show Snackbar"), onPressed: () => _showSnackbar()),
              RaisedButton(
                  child: Text("Show Dialog"), onPressed: () => _showDialog()),
              RaisedButton(
                  child: Text("Show Bottom Sheet"),
                  onPressed: () => _showBottomSheet()),
              SizedBox(
                height: 50,
              ),
              RaisedButton(
                  child: Text("Go to second page w/named route"),
                  onPressed: () => null),
            ],
          ),
        ),
      ),
    );
  }
}
