import 'package:flutter/material.dart';


bodercont(
  final String text,
  // final Color colors,
  // final int number,
) {
  return InkWell(
    onTap: () {},
    hoverColor: Colors.blue,
    child: Container(
      margin: EdgeInsets.only(left: 20),
      alignment: Alignment.center,
      height: 40,
      width: 120,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color.fromARGB(255, 230, 230, 230)),
      child: Customtext(
        colors: Colors.black,
        text: text,
        fontsize:14,
        fontWeight: FontWeight.normal,
      ),
    ),
  );
}

class Customtext extends StatelessWidget {
  final String text;
  final Color colors;
   double fontsize;
  FontWeight fontWeight;

  Customtext({
    Key? key,
    required this.text,
    required this.colors,
    // Change Hare 
    this.fontsize = 10,
    this.fontWeight = FontWeight.normal
     
  }) : super(key: key );

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: colors,
        fontSize: fontsize,
        fontWeight: fontWeight,
      ),
    );
  }
}


class BookImage extends StatelessWidget {
  final String text;
  final String image;
  BookImage({
    required this.image,
    required this.text,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20),
      height: 200.00,
      width: 150.00,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color.fromARGB(255, 241, 239, 239)),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 15),
            height: 120,
            width: 95,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(image), fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                      color: Color.fromARGB(255, 0, 0, 0),
                      blurRadius: 8,
                      offset: Offset(0, 10))
                ]),
          ),
          SizedBox(height: 20),
          Customtext(
              text: text,
              colors: Colors.black,
              fontsize: 15,
              fontWeight: FontWeight.bold)
        ],
      ),
    );
  }
}