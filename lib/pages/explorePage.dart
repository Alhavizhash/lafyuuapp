import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lafyuuapp/widgets/categoryCard.dart';
import 'package:lafyuuapp/widgets/search.dart';

class explorePage extends StatelessWidget {
  const explorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  search(),
                  Image.asset("images/love.png"),
                  Image.asset("images/Notification.png"),
                ],
              ),
              SizedBox(height: 30),
              Text(
                "Man Fashion",
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff223263),
                ),
              ),
              SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  categoryCard(
                    name: "Man Shirt",
                    icon: "images/shirticon.png",
                    ontap: () {},
                  ),
                  SizedBox(width: 21),
                  categoryCard(
                    name: "Man Work Equipments",
                    icon: "images/manbag.png",
                    ontap: () {},
                  ),
                  SizedBox(width: 21),
                  categoryCard(
                    name: "Woman Bag",
                    icon: "images/womanbag.png",
                    ontap: () {},
                  ),
                  SizedBox(width: 21),
                  categoryCard(
                    name: "Man Shoes",
                    icon: "images/shoes.png",
                    ontap: () {},
                  ),
                ],
              ),
              SizedBox(height: 16),
              Row(
                children: [
                  categoryCard(
                    name: "Man Shirt",
                    icon: "images/shirticon.png",
                    ontap: () {},
                  ),
                  SizedBox(width: 21),
                  categoryCard(
                    name: "Man Work Equipments",
                    icon: "images/manbag.png",
                    ontap: () {},
                  ),
                  SizedBox(width: 21),
                ],
              ),
              SizedBox(height: 24),
              Text(
                "Woman Fashion",
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff223263),
                ),
              ),
              SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  categoryCard(
                    name: "Dress",
                    icon: "images/dress.png",
                    ontap: () {},
                  ),
                  SizedBox(width: 21),
                  categoryCard(
                    name: "Woman T-Shirt",
                    icon: "images/womantshirt.png",
                    ontap: () {},
                  ),
                  SizedBox(width: 21),
                  categoryCard(
                    name: "Woman Pants",
                    icon: "images/womanpants.png",
                    ontap: () {},
                  ),
                  SizedBox(width: 21),
                  categoryCard(
                    name: "Skirt",
                    icon: "images/skirt.png",
                    ontap: () {},
                  ),
                ],
              ),
              SizedBox(height: 16),
              Row(
                children: [
                  categoryCard(
                    name: "Woman Bag",
                    icon: "images/womanbag1.png",
                    ontap: () {},
                  ),
                  SizedBox(width: 21),
                  categoryCard(
                    name: "High Heels",
                    icon: "images/womanshoes.png",
                    ontap: () {},
                  ),
                  SizedBox(width: 21),
                  categoryCard(
                    name: "Bikini",
                    icon: "images/bikini.png",
                    ontap: () {},
                  ),
                  SizedBox(width: 21),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
