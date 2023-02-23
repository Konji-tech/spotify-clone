import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class recentSong extends StatelessWidget {
  const recentSong( {Key? key,
      required this.img,
      required this.albumTitle})
      : super(key: key);

  final String img;
  final String albumTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white24,
                      ),
                      height: 50,
                      width: 150,
                      child: Row(
                        children: [
                          Image.asset(
                            img,
                            fit: BoxFit.fitHeight,
                            alignment: Alignment.centerLeft,
                          ),

                          Text(albumTitle,style: GoogleFonts.roboto(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.white)),
                          
                        ],
    ));
  }
}