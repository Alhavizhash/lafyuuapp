import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class categoryCard extends StatelessWidget {
  categoryCard({
    required this.name,
    required this.icon,
    required this.ontap,
  });

  String name;
  String icon;
  void Function()? ontap;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: ontap,
        borderRadius: BorderRadius.circular(10),
        child: Container(
          height: 108,
          width: 70,
          child: Column(
            children: [
              Container(
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(70),
                    border: Border.all(
                      color: Color(0xffEBF0FF),
                    )),
                child: Image.asset(icon),
              ),
              SizedBox(height: 8),
              Text(
                name,
                style: GoogleFonts.poppins(
                  fontSize: 10,
                  color: Color(0xff9098B1),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
