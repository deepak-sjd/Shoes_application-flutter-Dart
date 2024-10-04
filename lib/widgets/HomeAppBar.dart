import 'package:flutter/material.dart';

class Homeappbar extends StatelessWidget {
  const Homeappbar({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: Colors.white,
        padding: const EdgeInsets.all(25),
        child: Row(
          children: [
            const Icon(
              Icons.sort,
              size: 30,
              color: Color.fromARGB(190, 109, 109, 239),
            ),
            const Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  " DG Shop",
                  style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue),
                )),
            const Spacer(),
            Badge(
              padding: const EdgeInsets.all(7),
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, "cartPage");
                },
                child: const Icon(
                  Icons.shopping_bag_outlined,
                  size: 30,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
