import 'package:flutter/material.dart';

class Nextpage extends StatelessWidget {
  var imagegetdata;
  var textgetdata;
  Nextpage({
    Key? key,
    required this.textgetdata,
    required this.imagegetdata,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        actions: [
          const Icon(
            Icons.grid_view_outlined,
            color: Colors.black,
          ),
          const SizedBox(
            width: 20,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.topCenter,
          margin: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(children: [
            Container(
              alignment: Alignment.center,
              height: 350.00,
              width: 280.00,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 1),
                  boxShadow: [
                    const BoxShadow(
                      blurRadius: 7,
                      color: Colors.red,
                      offset: Offset(0, 8),
                    ),
                  ],
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(25)),
              child: Container(
                height: 250.00,
                width: 180.00,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 7,
                      color: Color.fromARGB(255, 15, 15, 15),
                      offset: Offset(0, 8),
                    )
                  ],
                  image: DecorationImage(
                      image: AssetImage(imagegetdata), fit: BoxFit.fill),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              textgetdata,
              style: const TextStyle(
                  fontSize: 21.00,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            Container(
              height: 50.00,
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(
                    color: Color.fromARGB(255, 201, 200, 200), width: 1),
                borderRadius: BorderRadius.circular(12),
                color: Color.fromARGB(255, 255, 254, 254),
                boxShadow: [
                  const BoxShadow(
                    blurRadius: 7,
                    color: Color.fromARGB(255, 194, 193, 193),
                    offset: const Offset(0, 8),
                  )
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "4.5",
                        style: TextStyle(
                            fontSize: 18.00,
                            color: Color.fromARGB(255, 7, 142, 231),
                            fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        "Rating",
                        style: TextStyle(
                            fontSize: 13.00,
                            color: Color.fromARGB(255, 7, 142, 231),
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "500",
                        style: TextStyle(
                            fontSize: 18.00,
                            color: Color.fromARGB(255, 7, 142, 231),
                            fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        "Pages",
                        style: TextStyle(
                            fontSize: 13.00,
                            color: Color.fromARGB(255, 7, 142, 231),
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "3,2M",
                        style: const TextStyle(
                            fontSize: 18.00,
                            color: Color.fromARGB(255, 7, 142, 231),
                            fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        "Readers",
                        style: const TextStyle(
                            fontSize: 13.00,
                            color: Color.fromARGB(255, 7, 142, 231),
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum",
              style: TextStyle(
                fontSize: 15.00,
                color: Colors.black,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
          ]),
        ),
      ),
      bottomNavigationBar: Container(
        height: 50.00,
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              alignment: Alignment.center,
              height: 40,
              width: 280,
              decoration: BoxDecoration(
                  color: Colors.black, borderRadius: BorderRadius.circular(10)),
              child: Text(
                "Start Reading",
                style: const TextStyle(
                    fontSize: 13.00,
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 0, 174, 255),
                    borderRadius: BorderRadius.circular(10)),
                child: Icon(
                  Icons.favorite,
                  color: Colors.white,
                ))
          ],
        ),
      ),
    );
  }
}
