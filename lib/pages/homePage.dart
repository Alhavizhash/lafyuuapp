import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lafyuuapp/models/model.dart';
import 'package:lafyuuapp/widgets/categoryCard.dart';
import 'package:lafyuuapp/widgets/flashsaleCard.dart';
import 'package:lafyuuapp/widgets/recomendedCard.dart';
import 'package:lafyuuapp/widgets/search.dart';

import '../repository/repository.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  List<Product> listProduct = [];
  Repository repository = Repository();

  getData() async {
    listProduct = await repository.getData();
    setState(() {});
  }

  @override
  void initState() {
    getData();
    super.initState();
  }

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
            SizedBox(height: 10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                height: 270,
                child: ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (contex, index) {
                      return recomendedCard(
                        discount: "24% off",
                        image: listProduct[index].ProductImage,
                        name: listProduct[index].nameProduct,
                        ontap: () {},
                        pricenow: listProduct[index].priceNow,
                        priceold: listProduct[index].priceOld,
                      );
                    },
                    itemCount: listProduct.length),
              ),
            ),
            SizedBox(height: 17),
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
            SizedBox(height: 10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                height: 270,
                child: ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (contex, index) {
                      return recomendedCard(
                        discount: "24% off",
                        image: listProduct[index].ProductImage,
                        name: listProduct[index].nameProduct,
                        ontap: () {},
                        pricenow: listProduct[index].priceNow,
                        priceold: listProduct[index].priceOld,
                      );
                    },
                    itemCount: listProduct.length),
              ),
            ),
            SizedBox(height: 17),
            Image.asset("images/banner2.png"),
            SizedBox(height: 23),
            GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 15,
                mainAxisSpacing: 15,
                mainAxisExtent: 280,
              ),
              itemBuilder: (contex, index) {
                return recomendedCard1(
                  discount: "24% off",
                  image: listProduct[index].ProductImage,
                  name: listProduct[index].nameProduct,
                  ontap: () {},
                  pricenow: listProduct[index].priceNow,
                  priceold: listProduct[index].priceOld,
                );
              },
              itemCount: listProduct.length,
            ),
          ],
        ),
      ),
    ));
  }
}
