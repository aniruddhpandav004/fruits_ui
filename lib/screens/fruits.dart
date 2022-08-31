import 'package:flutter/material.dart';

class Fruits extends StatefulWidget {
  const Fruits({Key? key}) : super(key: key);

  @override
  State<Fruits> createState() => _FruitsState();
}

class _FruitsState extends State<Fruits> {
  List image = [
    "assets/Images/apple.png",
    "assets/Images/banana.png",
    "assets/Images/kiwi.png",
    "assets/Images/orange.png",
    "assets/Images/strawberry.png",
    "assets/Images/watermelon.png",
  ];
  List name = [
    "Apple",
    "Banana",
    "Kiwi",
    "Orange",
    "Strawberry",
    "Watermelon",
  ];
  List price = [
    "30.02",
    "45.20",
    "38.12",
    "50.09",
    "60.14",
    "55.19",
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "GetX Concepts",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
          ),
          leading: Icon(
            Icons.menu,
            color: Colors.black,
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.shopping_cart,
                  color: Colors.black,
                )),
          ],
        ),
        backgroundColor: Color(0xffE9D8CE),
        body: Center(
          child: GridView.builder(
            itemCount: image.length,
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.all(20),
                child: ListTile(
                  title: GestureDetector(
                    onTap: (){
                      Navigator.pushNamed(context, 'Data',arguments: m1);
                    },
                    child: Container(
                      height: 300,
                      width: 300,
                      decoration: BoxDecoration(
                        color: Colors.white60,
                        border: Border.all(color: Color(0xff999A9A)),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        children: [
                          Container(
                            height: 150,
                            width: 150,
                            child: Image.asset("${image[index]}"),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "${name[index]}",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 10),
                          Text("U\u20B9 ${price[index]}"),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

class ModeClass {
  String? name, price;
  AssetImage? image;
  ModeClass({required this.name,required this.price,required this.image});
}
