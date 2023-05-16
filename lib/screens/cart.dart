import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';
import 'package:simple_shopping_cart/controller/cart_controller.dart';
import 'package:simple_shopping_cart/widgets/cart_item.dart';

import '../utils/app_layout.dart';

class Cart extends StatelessWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = AppLayout.displayWidth(context);
    final height = AppLayout.displayHeightWithTBars(context);

    final CartController cartController = Get.put(CartController());

    return Scaffold(
      body: Column(
        children: [
          Container(
            height: height * 0.3,
            decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(width * 0.1))),
            child: const Center(
                child: Text(
              "Get X Flutter",
              style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            )),
          ),
          SizedBox(
            height: height * 0.1,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: width * 0.03),
            width: width * 0.9,
            height: height * 0.5,
            child: ListView(
              children: [
                Obx(
                      () => Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        "Books",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.normal,
                          color: Colors.amber,
                        ),
                      ),
                      SizedBox(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            ElevatedButton(
                              onPressed: (){
                                cartController.incrementBooks();
                              },
                              style: ElevatedButton.styleFrom(
                                minimumSize: Size(width*0.1, height*0.05),
                                backgroundColor: Colors.red,
                                shape: const CircleBorder(),
                              ),
                              child: const Icon(Ionicons.add),
                            ),
                            SizedBox(
                              width: width*0.09,
                              child: Center(
                                child: Text(
                                  "${cartController.books_quantity.value}",
                                  style: const TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                            ElevatedButton(
                              onPressed: (){
                                cartController.decrementBooks();
                              },
                              style: ElevatedButton.styleFrom(
                                minimumSize: Size(width*0.1, height*0.05),
                                backgroundColor: Colors.red,
                                shape: const CircleBorder(),
                              ),
                              child: const Icon(Ionicons.remove),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: height * 0.05,
                ),
                Obx(
                      () => Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        "Pens",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.normal,
                          color: Colors.amber,
                        ),
                      ),
                      SizedBox(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            ElevatedButton(
                              onPressed: (){
                                cartController.incrementPens();
                              },
                              style: ElevatedButton.styleFrom(
                                minimumSize: Size(width*0.1, height*0.05),
                                backgroundColor: Colors.red,
                                shape: const CircleBorder(),
                              ),
                              child: const Icon(Ionicons.add),
                            ),
                            SizedBox(
                              width: width*0.09,
                              child: Center(
                                child: Text(
                                  "${cartController.pens_quantity.value}",
                                  style: const TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                            ElevatedButton(
                              onPressed: (){
                                cartController.decrementPens();
                              },
                              style: ElevatedButton.styleFrom(
                                minimumSize: Size(width*0.1, height*0.05),
                                backgroundColor: Colors.red,
                                shape: const CircleBorder(),
                              ),
                              child: const Icon(Ionicons.remove),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: height * 0.05,
                ),
                Obx(
                  () => Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        "Pencils",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.normal,
                          color: Colors.amber,
                        ),
                      ),
                      SizedBox(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            ElevatedButton(
                              onPressed: (){
                                cartController.incrementPencils();
                              },
                              style: ElevatedButton.styleFrom(
                                minimumSize: Size(width*0.1, height*0.05),
                                backgroundColor: Colors.red,
                                shape: const CircleBorder(),
                              ),
                              child: const Icon(Ionicons.add),
                            ),
                            SizedBox(
                              width: width*0.09,
                              child: Center(
                                child: Text(
                                  "${cartController.pencils_quantity.value}",
                                  style: const TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                            ElevatedButton(
                              onPressed: (){
                                cartController.decrementPencils();
                              },
                              style: ElevatedButton.styleFrom(
                                minimumSize: Size(width*0.1, height*0.05),
                                backgroundColor: Colors.red,
                                shape: const CircleBorder(),
                              ),
                              child: const Icon(Ionicons.remove),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: height * 0.05,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.deepPurpleAccent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(width * 0.03),
                        ),
                      ),
                      child: const Text(
                        "Checkout",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.normal,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
