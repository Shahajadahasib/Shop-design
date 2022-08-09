import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:online_site/screen/favorite_screen.dart';
import 'package:online_site/screen/homepage.dart';
import 'package:online_site/screen/message_screen.dart';
import 'package:online_site/screen/profile_screen.dart';
import 'package:stylish_bottom_bar/stylish_bottom_bar.dart';

class BottomBarScreen extends StatefulWidget {
  const BottomBarScreen({Key? key}) : super(key: key);

  @override
  State<BottomBarScreen> createState() => _BottomBarScreenState();
}

class _BottomBarScreenState extends State<BottomBarScreen> {
  PageController controller = PageController(initialPage: 0);
  var selected = 0;
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: PageView(
        controller: controller,
        children: [
          const HomePage(),
          MessageScreen(),
          FavoriteScreen(),
          ProfileScreen(),
        ],
      ),
      bottomNavigationBar: StylishBottomBar(
        // iconStyle: IconStyle.Default,
        items: [
          AnimatedBarItems(
              icon: Icon(
                Icons.home,
              ),
              selectedColor: Colors.deepPurple,
              backgroundColor: Colors.amber,
              title: Text('Home')),
          AnimatedBarItems(
              icon: Icon(
                Icons.message,
              ),
              selectedColor: Colors.deepPurple,
              backgroundColor: Colors.amber,
              title: Text('Messenge')),
          AnimatedBarItems(
              icon: Icon(
                Icons.favorite,
              ),
              selectedColor: Colors.deepPurple,
              backgroundColor: Colors.amber,
              title: Text('Favorite')),
          AnimatedBarItems(
              icon: Icon(
                Icons.person,
              ),
              selectedColor: Colors.deepPurple,
              backgroundColor: Colors.amber,
              title: Text('Profile')),
        ],
        fabLocation: StylishBarFabLocation.center,
        hasNotch: true,
        // iconSize: 32,
        barStyle: BubbleBarStyle.horizotnal,
        // barStyle: BubbleBarStyle.vertical,
        bubbleFillStyle: BubbleFillStyle.fill,
        // bubbleFillStyle: BubbleFillStyle.outlined,
        opacity: 0.3,
        currentIndex: selected,
        onTap: (index) {
          setState(() {
            selected = index!;
            controller.jumpToPage(index);
          });
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.emoji_emotions),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
