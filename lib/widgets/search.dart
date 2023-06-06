import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class search extends StatelessWidget {
  const search({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        padding: const EdgeInsets.only(left: 23),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: Color(0xffEBF0FF),
            )),
        height: 51.57,
        width: 300,
        child: Center(
          child: TextFormField(
            decoration: InputDecoration(
              icon: Image.asset("images/search.png"),
              border: InputBorder.none,
              hintText: "Search Product",
              hintStyle: GoogleFonts.poppins(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: Color(0xff9098B1),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
