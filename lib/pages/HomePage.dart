import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shoes_app/widgets/CategoriesWidget.dart';
import 'package:shoes_app/widgets/HomeAppBar.dart';
import 'package:shoes_app/widgets/ItemWidet.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Homeappbar(),
          Container(
            //height: 500,
            padding: const EdgeInsets.only(top: 15),
            decoration: const BoxDecoration(
                color: Color(0xFFEDECF2),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(35),
                    topRight: Radius.circular(35))),
            child: Column(
              children: [
                // search section
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 15),
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30)),
                  child: Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 5),
                        height: 50,
                        width: 300,
                        child: TextFormField(
                          decoration: const InputDecoration(
                              border: InputBorder.none,
                              hintText: "Search here........",
                              hintStyle: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                              )),
                        ),
                      ),
                     const Spacer(),
                      const Icon(
                        Icons.camera_alt,
                        size: 30,
                        color: Color(0xFF4C53A5),
                      )
                    ],
                  ),
                ),
                Container(
                  // categories section
                  margin:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                  child: const Text(
                    "Categories",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF4C53A5)),
                  ),
                ),

                // Categories Widget
               const  Categorieswidget(),

                // items
                Container(
                  alignment: Alignment.centerLeft,
                  margin:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                  child: const Text(
                    "Best Selling",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 155, 62, 236)),
                  ),
                ),

               const  Itemwidet(),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        height: 70,
        onTap: (index) {},
        color: const Color(0xFF4C53A5),
        items: const [
          Icon(Icons.home, size: 30, color: Colors.white),
          Icon(CupertinoIcons.cart_fill, size: 30, color: Colors.white),
          Icon(Icons.list, size: 30, color: Colors.white),
          Icon(
            Icons.notification_add,
            size: 30,
            color: Colors.white,
          )
        ],
      ),
    );
  }
}
