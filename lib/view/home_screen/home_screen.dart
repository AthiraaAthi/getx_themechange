import 'package:class_of_get_x/controller/my_controller.dart';
import 'package:class_of_get_x/view/second_screen/second_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final MyController myControllerobj = Get.put(MyController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Obx(() => Text(myControllerobj.count.toString())),
          ), //for updating the change wrap with obx
          SizedBox(
            height: 40,
          ),
          OutlinedButton(
              onPressed: () {
                Get.to(SecondScreen());
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //       builder: (context) => SecondScreen(),
                //     ));
              },
              child: Text("SecondScreen"))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}
