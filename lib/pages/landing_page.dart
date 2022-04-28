import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LandingPage extends StatefulWidget {
  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget navItem(String title, int index) {
      return InkWell(
        onTap: () {
          setState(() {
            selectedIndex = index;
          });
        },
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              title,
              style: GoogleFonts.poppins(
                fontSize: 18,
                fontWeight:
                    index == selectedIndex ? FontWeight.w500 : FontWeight.w300,
                color: Color(0xff1D1E3C),
              ),
            ),
            Container(
              width: 66,
              height: 2,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: index == selectedIndex
                    ? Color(0xffFE998D)
                    : Colors.transparent,
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
        body: Stack(
      children: [
        Image.asset(
          'background.png',
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          fit: BoxFit.fill,
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 100,
            vertical: 30,
          ),
          child: Column(
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Image.asset(
                  'logo.png',
                  height: 40,
                  width: 72,
                ),
                Row(
                  children: [
                    navItem(
                      'Guides',
                      0,
                    ),
                    SizedBox(width: 50),
                    navItem(
                      'Pricing',
                      1,
                    ),
                    SizedBox(width: 50),
                    navItem(
                      'Team',
                      2,
                    ),
                    SizedBox(width: 50),
                    navItem('Stories', 3),
                  ],
                ),
                Image.asset(
                  'button_account.png',
                  width: 163,
                  height: 53,
                )
              ]),
              SizedBox(height: 32),
              Image.asset(
                'illustration.png',
                width: 550,
              ),
              SizedBox(height: 84),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Image.asset(
                  'icon_scroll.png',
                  width: 24,
                ),
                SizedBox(width: 13),
                Text('Scroll to Learn More',
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                      color: Colors.black,
                    ))
              ])
            ],
          ),
        ),
      ],
    ));
  }
}
