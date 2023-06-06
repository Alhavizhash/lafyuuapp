import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lafyuuapp/widgets/categoryCard.dart';
import 'package:lafyuuapp/widgets/flashsaleCard.dart';
import 'package:lafyuuapp/widgets/recomendedCard.dart';
import 'package:lafyuuapp/widgets/search.dart';

class homePage extends StatelessWidget {
  const homePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                search(),
                Image.asset("images/love.png"),
                Image.asset("images/Notification.png"),
              ],
            ),
            SizedBox(height: 32),
            Image.asset("images/Banner.png"),
            SizedBox(height: 23),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Category",
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff223263),
                  ),
                ),
                Text(
                  "See more",
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff40BFFF),
                  ),
                ),
              ],
            ),
            SizedBox(height: 12),
            Container(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    categoryCard(
                      name: "Man Shirt",
                      icon: "images/shirticon.png",
                      ontap: () {},
                    ),
                    SizedBox(width: 12),
                    categoryCard(
                      name: "Dress",
                      icon: "images/dress.png",
                      ontap: () {},
                    ),
                    SizedBox(width: 12),
                    categoryCard(
                      name: "Man Work Equipments",
                      icon: "images/manbag.png",
                      ontap: () {},
                    ),
                    SizedBox(width: 12),
                    categoryCard(
                      name: "Woman Bag",
                      icon: "images/womanbag.png",
                      ontap: () {},
                    ),
                    SizedBox(width: 12),
                    categoryCard(
                      name: "Man Shoes",
                      icon: "images/shoes.png",
                      ontap: () {},
                    ),
                    SizedBox(width: 12),
                    categoryCard(
                      name: "High Heels",
                      icon: "images/womanshoes.png",
                      ontap: () {},
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 23),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Flash Sale",
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff223263),
                  ),
                ),
                Text(
                  "See more",
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff40BFFF),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 12),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    flashsaleCard(
                        discount: "24% off",
                        image: "images/product1.png",
                        name: "FS - Nike Air Max 270 React...",
                        ontap: () {},
                        pricenow: "Rp.499.000-,",
                        priceold: "799.999-,"),
                    SizedBox(width: 16),
                    flashsaleCard(
                        discount: "24% off",
                        image: "images/product2.png",
                        name: "FS - QUILTED MAXI CROS...",
                        ontap: () {},
                        pricenow: "Rp.499.000-,",
                        priceold: "799.999-,"),
                    SizedBox(width: 16),
                    flashsaleCard(
                        discount: "24% off",
                        image: "images/product3.png",
                        name: "FS - Nike Air Max 270 React...",
                        ontap: () {},
                        pricenow: "Rp.499.000-,",
                        priceold: "799.999-,"),
                    SizedBox(width: 16),
                  ],
                ),
              ),
            ),
            SizedBox(height: 23),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Mega Sale",
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff223263),
                  ),
                ),
                Text(
                  "See more",
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff40BFFF),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 12),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    flashsaleCard(
                        discount: "24% off",
                        image: "images/product4.png",
                        name: "FS - Nike Air Max 270 React...",
                        ontap: () {},
                        pricenow: "Rp.499.000-,",
                        priceold: "799.999-,"),
                    SizedBox(width: 16),
                    flashsaleCard(
                        discount: "24% off",
                        image: "images/product5.png",
                        name: "FS - QUILTED MAXI CROS...",
                        ontap: () {},
                        pricenow: "Rp.499.000-,",
                        priceold: "799.999-,"),
                    SizedBox(width: 16),
                    flashsaleCard(
                        discount: "24% off",
                        image: "images/product6.png",
                        name: "FS - Nike Air Max 270 React...",
                        ontap: () {},
                        pricenow: "Rp.499.000-,",
                        priceold: "799.999-,"),
                    SizedBox(width: 16),
                  ],
                ),
              ),
            ),
            SizedBox(height: 17),
            Image.asset("images/banner2.png"),
            SizedBox(height: 23),
            GridView(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 15,
                mainAxisSpacing: 15,
                mainAxisExtent: 280,
              ),
              children: [
                recomendedCard(
                  discount: "24% off",
                  image: "images/product5.png",
                  name: "Nike Air Max 270 React ENG",
                  ontap: () {},
                  pricenow: "Rp.899.999-,",
                  priceold: "Rp.1.000.000-,",
                ),
                recomendedCard(
                  discount: "24% off",
                  image: "images/product4.png",
                  name: "Nike Air Max 270 React ENG",
                  ontap: () {},
                  pricenow: "Rp.899.999-,",
                  priceold: "Rp.1.000.000-,",
                ),
                recomendedCard(
                  discount: "24% off",
                  image: "images/product7.png",
                  name: "Nike Air Max 270 React ENG",
                  ontap: () {},
                  pricenow: "Rp.899.999-,",
                  priceold: "Rp.1.000.000-,",
                ),
                recomendedCard(
                  discount: "24% off",
                  image: "images/product3.png",
                  name: "Nike Air Max 270 React ENG",
                  ontap: () {},
                  pricenow: "Rp.899.999-,",
                  priceold: "Rp.1.000.000-,",
                ),
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
