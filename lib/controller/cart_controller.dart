import 'package:get/get.dart';
import 'package:flutter/material.dart';

class CartController extends GetxController {
  var books_quantity = 1.obs;
  var pens_quantity = 0.obs;
  var pencils_quantity = 0.obs;

  void incrementBooks() {
    books_quantity.value++;
  }

  void decrementBooks() {
    books_quantity.value--;
  }

  void incrementPens() {
    pens_quantity.value++;
  }

  void decrementPens() {
    pens_quantity.value--;
  }

  void incrementPencils() {
    pencils_quantity.value++;
  }

  void decrementPencils() {
    pencils_quantity.value--;
  }
}