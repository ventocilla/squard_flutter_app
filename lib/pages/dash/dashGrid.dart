import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:squadapp/pages/list/listPage.dart';

class dashGrid extends StatelessWidget {
  Items item1 = Items(
    title: "Iniciativas",
    subtitle: "March, Wednesday",
    event: "3 Events",
    img: "assets/lightbulb.png",
  );

  Items item2 = Items(
    title: "Features",
    subtitle: "Bocali, Apple",
    event: "4 Items",
    img: "assets/puzzle-piece.png",
  );
  Items item3 = Items(
    title: "USs",
    subtitle: "Lucy Mao going to Office",
    event: "3 Events",
    img: "assets/files.png",
  );
  Items item4 = Items(
    title: "Sprints",
    subtitle: "Rose favirited your Post",
    event: "3 Events",
    img: "assets/sprinting.png",
  );

  @override
  Widget build(BuildContext context) {
    List<Items> myList = [item1, item2, item3, item4];
    var color = 0xff453658;
    return Flexible(
      child: GridView.count(
        childAspectRatio: 1.0,
        padding: EdgeInsets.only(right: 16, left: 16),
        crossAxisCount: 2,
        crossAxisSpacing: 18,
        mainAxisSpacing: 18,
        children: myList.map((data) {
          return InkWell(
            onTap: () {
              print(data.title);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ListPage(),
                ),
              );
            },
            child: Container(
              decoration: BoxDecoration(
                color: Color(color),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(data.img, width: 42, color: Colors.white),
                  SizedBox(height: 14),
                  Text(
                    data.title,
                    style: GoogleFonts.openSans(
                      textStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 22, //16
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  //SizedBox(height: 8),
//                Text(
//                  data.subtitle,
//                  style: GoogleFonts.openSans(
//                      textStyle: TextStyle(
//                          color: Colors.white38,
//                          fontSize: 10,
//                          fontWeight: FontWeight.w600)),
//                ),
                  SizedBox(height: 14),
                  Text(
                    data.event,
                    style: GoogleFonts.openSans(
                      textStyle: TextStyle(
                        color: Colors.white70,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}

class Items {
  String title;
  String subtitle;
  String event;
  String img;
  Items({this.title, this.subtitle, this.event, this.img});
}
