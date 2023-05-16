import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:simple_shopping_cart/utils/app_layout.dart';

class CartItem extends StatelessWidget {
  final String name;
  final int quantity;
  final Function onAdd;
  final Function onRemove;

  const CartItem({
    required this.name,
    required this.quantity,
    required this.onAdd,
    required this.onRemove,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final displayWidth = AppLayout.displayWidth(context);
    final displayHeight = AppLayout.displayHeightWithTBars(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          name,
          style: const TextStyle(
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
                onPressed: onAdd(),
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(displayWidth*0.1, displayHeight*0.05),
                  backgroundColor: Colors.red,
                  shape: const CircleBorder(),
                ),
                child: const Icon(Ionicons.add),
              ),
              SizedBox(
                width: displayWidth*0.09,
                child: Center(
                  child: Text(
                    quantity.toString(),
                    style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.normal,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: onRemove(),
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(displayWidth*0.1, displayHeight*0.05),
                  backgroundColor: Colors.red,
                  shape: const CircleBorder(),
                ),
                child: const Icon(Ionicons.remove),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
