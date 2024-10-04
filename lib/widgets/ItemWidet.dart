import 'package:flutter/material.dart';

class Itemwidet extends StatelessWidget {
  const Itemwidet({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: GridView.count(
        crossAxisCount: 2,
        childAspectRatio: 0.68,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          for (int i = 1; i < 30; i++)
            SingleChildScrollView(
              child: Container(
                padding: const EdgeInsets.only(left: 15, right: 8.0),
                margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(5),
                          margin: const EdgeInsets.only(top: 6),
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 89, 89, 175),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Text(
                            "-50%",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                        const Icon(
                          Icons.favorite_border,
                          color: Colors.red,
                        )
                      ],
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, "itemPage");
                      },
                      child: Container(
                        margin: const EdgeInsets.all(10),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            "assets/images/$i.jpg",
                            width: 120,
                            height: 120,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(bottom: 8),
                      alignment: Alignment.centerLeft,
                      child: const Text(
                        "Prouduct Title,",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF4C53A5)),
                      ),
                    ),
                    SingleChildScrollView(
                      child: Container(
                        alignment: Alignment.centerLeft,
                        child: const Text(
                          "Write description of product",
                          style:
                              TextStyle(fontSize: 15, color: Color(0xFF4C53A5)),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "\$55",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF4C53A5)),
                          ),
                          Icon(
                            Icons.shopping_cart_checkout,
                            color: Color(0xFF4C53A5),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
        ],
      ),
    );
  }
}
