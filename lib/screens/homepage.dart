import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spotify_clone/widgets/recentSong.dart';
import 'package:carousel_slider/carousel_slider.dart';

class homepage extends StatelessWidget {
  const homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 40.0, horizontal: 15),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  "Hello Viola",
                  style: GoogleFonts.roboto(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Colors.white),
                ),
                SizedBox(
                  width: 35,
                ),
                IconButton(
                  icon: FaIcon(FontAwesomeIcons.bell),
                  onPressed: () {},
                  color: Colors.white,
                ),
                SizedBox(
                  width: 10,
                ),
                IconButton(
                  icon: FaIcon(FontAwesomeIcons.clock),
                  onPressed: () {},
                  color: Colors.white,
                ),
                SizedBox(
                  width: 10,
                ),
                IconButton(
                  icon: FaIcon(FontAwesomeIcons.gear),
                  onPressed: () {},
                  color: Colors.white,
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Column(
              children: [
                Row(children: [
                  Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        color: Colors.white24,
                        borderRadius: BorderRadius.circular(30)),
                    child: Text("music",
                        style: GoogleFonts.roboto(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.white)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        color: Colors.white24,
                        borderRadius: BorderRadius.circular(30)),
                    child: Text(
                      "podcasts & shows",
                      style: GoogleFonts.roboto(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                ]),
              ],
            ),
            SizedBox(height: 15),
            Column(
              children: [
                Row(
                  children: [
                    recentSong(
                      img: "images/strawberry.jpeg",
                      albumTitle: "Return From...",
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    recentSong(img: "images/liquid.png", albumTitle: "Watch.."),
                  ],
                )
              ],
            ),
            SizedBox(height: 10),
            Column(
              children: [
                Row(
                  children: [
                    recentSong(
                      img: "images/ballads.jpeg",
                      albumTitle: "Slow dancing",
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    recentSong(
                        img: "images/call.jpeg", albumTitle: "Call me if"),
                  ],
                )
              ],
            ),
            SizedBox(height: 10),
            Column(
              children: [
                Row(
                  children: [
                    recentSong(
                      img: "images/nallowed.jpeg",
                      albumTitle: "Tv Girl",
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    recentSong(
                        img: "images/angel.jpeg", albumTitle: "Angel You,,"),
                  ],
                )
              ],
            ),
            SizedBox(height: 25),
            Container(
              alignment: Alignment.centerLeft,
              child: Text("Get Back in",
                  style: GoogleFonts.roboto(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.white)),
            ),
            SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    ));
  }
}
