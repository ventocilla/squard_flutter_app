import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:squadapp/pages/dash/dashGrid.dart';

class DashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff392850),
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: EdgeInsets.only(left: 16, right: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Dashboard',
                      style: GoogleFonts.openSans(
                        textStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      'Squard Mobililidade',
                      style: GoogleFonts.openSans(
                        textStyle: TextStyle(
                          color: Color(0xffa29aac),
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
                IconButton(
                  alignment: Alignment.topLeft,
                  icon: Image.asset(
                    "assets/torch.png",
                    width: 35,  // 24,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    //print('Torch');
                  },
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          dashGrid(),
//          PageView(
//            children: <Widget>[
//              dashGrid(),
//              Container(color: Colors.red),
//              Container(color: Colors.yellow),
//              Container(color: Colors.green),
//            ],
//          ),
        ],
      ),
    );
  }
}
