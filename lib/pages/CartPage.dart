import 'package:flutter/material.dart';
import 'package:shoes_app/widgets/CartAppBar.dart';
import 'package:shoes_app/widgets/CartBottomNavBar.dart';
import 'package:shoes_app/widgets/CartItemSample.dart';

class Cartpage extends StatelessWidget {
  const Cartpage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const Cartappbar(),
          Container(
            // height: 700,
            padding: const EdgeInsets.only(top: 15),
            decoration: const BoxDecoration(
              color: Color(0xFFEDECF2),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(35),
                topRight: Radius.circular(35),
              ),
            ),
            child: Column(
              children: [
                const Cartitemsample(),
                Container(
                  // decoration: BoxDecoration(
                  //   borderRadius: BorderRadius.circular(10),
                  // ),

                  margin:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: const Color(0xFF4C53A5),
                            borderRadius: BorderRadius.circular(20)),
                        child: const Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          "Add Coupon Code",
                          style: TextStyle(
                              color: Color(0xFF4C53A5),
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: const Cartbottomnavbar(),
    );
  }
}
