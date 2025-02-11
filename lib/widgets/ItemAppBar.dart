import 'package:flutter/material.dart';

class ItemAppBar extends StatelessWidget {
  const ItemAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(25),
      child: const Row(
        children: [
          // InkWell(
          //   onTap: () {
          //     Navigator.pop(context);
          //   },
          //   child: const Icon(
          //     Icons.arrow_back,
          //     color: Color(0xFF4C53A5),
          //     size: 30,
          //   ),
          // ),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              "Product ",
              style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF4C53A5)),
            ),
          ),
          Spacer(),
          Icon(
            Icons.favorite,
            size: 30,
            color: Colors.red,
          )
        ],
      ),
    );
  }
}
