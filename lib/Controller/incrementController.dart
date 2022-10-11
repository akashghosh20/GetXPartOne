import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InCrementController extends GetxController {
  RxInt value = 0.obs;
  Increment() {
    value++;
  }
}
