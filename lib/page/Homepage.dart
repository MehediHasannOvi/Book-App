import 'package:flutter/material.dart';
import 'package:newui/customtext.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(left: 20, top: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/Images/image1999.png")),
                      borderRadius: BorderRadius.circular(50)),
                ),
                IconButton(
                    onPressed: () {}, icon: Icon(Icons.notifications_outlined))
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Text("Good Morning ✌ "),
                Text(
                  "Ava",
                  style: TextStyle(color: Colors.purple),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Customtext(
              text: "Time To read New Book...",
              colors: Colors.grey,
              fontWeight: FontWeight.normal,
              fontsize: 14,
            ),
            Container(
              margin: EdgeInsets.only(
                top: 10,
              ),
              height: 35,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 242, 243, 242),
                  borderRadius: BorderRadius.circular(20)),
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: TextFormField(
                  decoration: InputDecoration(
                      icon: Icon(Icons.search),
                      hintText: "Search for book",
                      hintStyle: TextStyle(color: Colors.grey),
                      border: InputBorder.none),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Flex(
                direction: Axis.horizontal,
                children: [
                  bodercont(
                    "🖤 Romance",
                  ),
                  bodercont("🐸 Fantasy"),
                  bodercont("🤑 Bussines"),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Customtext(
                  text: "Popular Books",
                  colors: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontsize: 23,
                ),
                Customtext(
                  text: "see all",
                  colors: Colors.grey,
                  fontWeight: FontWeight.normal,
                  fontsize: 15,
                )
              ],
            ),
            SizedBox(height: 20),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Flex(
                direction: Axis.horizontal,
                children: [
                  BookImage(
                      image: "assets/Images/image2.jpg", text: "Simi book"),
                  BookImage(
                      image: "assets/Images/image1.jpg", text: "Robiul book"),
                  BookImage(
                      image: "assets/Images/image1.jpg", text: "Akib book"),
                  BookImage(
                      image: "assets/Images/image4.jpg", text: "Mahira book"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
