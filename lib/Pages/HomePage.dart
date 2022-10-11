import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/Controller/incrementController.dart';
import 'package:provider/Pages/SecondPage.dart';
import 'package:get/route_manager.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final InCrementController _inCrementController =
      Get.put(InCrementController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GetX"),
        centerTitle: true,
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => Text("${_inCrementController.value}")),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  _inCrementController.Increment();
                },
                child: Text("Add")),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  Get.to(SecondPage(), transition: Transition.downToUp);
                  //Get.offAll use korle r back a asha jabe na.
                  //Get.off(1) 5 no page a use korle 5 theke 1  a jabe direct
                },
                child: Text("Second Page")),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  Get.defaultDialog(
                      title: "Hi, Iam Akash Ghosh",
                      content: Text(
                          "Today iam going to watch a movie in town hall"));
                  //Get.offAll use korle r back a asha jabe na.
                  //Get.off(1) 5 no page a use korle 5 theke 1  a jabe direct
                },
                child: Text("Dialogue")),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  Get.snackbar(
                      "Hi,Iam Akash Ghosh", "I am going ro watch movie today",
                      duration: Duration(seconds: 5),
                      colorText: Colors.amber,
                      backgroundColor: Colors.purple);
                  //Get.offAll use korle r back a asha jabe na.
                  //Get.off(1) 5 no page a use korle 5 theke 1  a jabe direct
                },
                child: Text("Snackbar")),
          ],
        ),
      ),
    );
  }
}
