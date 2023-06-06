import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class recomendedCard extends StatelessWidget {
  recomendedCard({
    required this.discount,
    required this.image,
    required this.name,
    required this.ontap,
    required this.pricenow,
    required this.priceold,
  });

  String name;
  String image;
  String pricenow;
  String priceold;
  String discount;
  void Function()? ontap;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: () {},
        borderRadius: BorderRadius.circular(10),
        child: Container(
          height: 238,
          width: 141,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: Color(0xffEBF0FF),
              )),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(16, 16, 16, 8),
                height: 108,
                width: 108,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Color(0xffF6F6F6),
                ),
                child: Image.asset(image),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 0, 16, 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff223263),
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      pricenow,
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff40BFFF),
                      ),
                    ),
                    SizedBox(height: 20),
                    Image.asset("images/ratting.png"),
                    SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          priceold,
                          style: GoogleFonts.poppins(
                            fontSize: 10,
                            color: Color(0xff9098B1),
                          ),
                        ),
                        Text(
                          discount,
                          style: GoogleFonts.poppins(
                            fontSize: 10,
                            color: Color(0xffFB7181),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
