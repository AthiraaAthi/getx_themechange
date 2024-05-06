import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/my_controller.dart';

class SecondScreen extends StatefulWidget {
  SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  final MyController myControllerobj = Get.put(MyController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: () {
                      myControllerobj.counterIncrement();
                    },
                    child: Text("+")),
                ElevatedButton(
                    onPressed: () {
                      myControllerobj.counterDecrement();
                    },
                    child: Text("-")),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Get.changeTheme(ThemeData.dark()); //for theme changing
                  },
                  child: Text("DArk")),
              ElevatedButton(
                  onPressed: () {
                    Get.changeTheme(ThemeData.light());
                  },
                  child: Text("Light"))
            ],
          ),
          ElevatedButton(
              onPressed: () {
                Get.defaultDialog(
                    //for alert Dialog
                    title: "Alert",
                    actions: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [Text("Yes"), Text("No")],
                      ),
                    ],
                    content: Text("There are Some Errors in this"));
              },
              child: Text("Alert")),
          ElevatedButton(
              onPressed: () {
                Get.snackbar(
                  "Error", "Hey!WatchOut", //for snackbar
                  backgroundColor: Colors.white,
                  //snackPosition: SnackPosition.BOTTOM,
                );
              },
              child: Text("Snackbar"))
        ],
      ),
    );
  }
}
