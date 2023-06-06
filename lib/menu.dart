import 'package:bottom_navigation_view/bottom_navigation_view.dart';
import 'package:flutter/material.dart';
import 'package:lafyuuapp/pages/explorePage.dart';
import 'package:lafyuuapp/pages/homePage.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> with SingleTickerProviderStateMixin {
  late final BottomNavigationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = BottomNavigationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        _controller.goBack();
        return false;
      },
      child: Scaffold(
        body: BottomNavigationView(
          controller: _controller,
          transitionType: BottomNavigationTransitionType.fadeInOut,
          backgroundColor: Colors.lime,
          children: const [
            homePage(),
            Scaffold(),
            Scaffold(),
            explorePage(),
            // ColorScreen(color: Colors.green),
          ],
        ),
        bottomNavigationBar: BottomNavigationIndexedBuilder(
          controller: _controller,
          builder: (context, index, child) {
            return BottomNavigationBar(
              currentIndex: index,
              onTap: (index) {
                _controller.goTo(index);
              },
              type: BottomNavigationBarType.fixed,
              selectedItemColor: Color(0xff40BFFF),
              items: const [
                BottomNavigationBarItem(
                  label: 'Home',
                  icon: Icon(
                    Icons.home,
                  ),
                ),
                BottomNavigationBarItem(
                  label: 'Explore',
                  icon: Icon(
                    Icons.explore_sharp,
                  ),
                ),
                BottomNavigationBarItem(
                  label: 'Cart',
                  icon: Icon(Icons.trolley),
                ),
                BottomNavigationBarItem(
                  label: 'Offer',
                  icon: Icon(
                    Icons.local_offer,
                  ),
                ),
                BottomNavigationBarItem(
                  label: 'Account',
                  icon: Icon(
                    Icons.people,
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
