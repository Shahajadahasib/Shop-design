// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:online_site/mode/dark_provider.dart';
import 'package:provider/provider.dart';

import '../widget/card.dart';
import '../widget/circle.dart';
import '../widget/search_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

ThemeProvider themeProvider = ThemeProvider();

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final isdark = themeProvider.getdarkTheme;

    TextEditingController _searchController = TextEditingController();
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          // height: MediaQuery.of(context).size.height * 5,
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              SearchBar(isdark: isdark, searchController: _searchController),
              Circle(),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Update",
                    ),
                    Text(
                      "Recent",
                      style: TextStyle(color: Colors.red),
                    ),
                  ],
                ),
              ),
              GridView.builder(
                shrinkWrap: true,
                itemCount: 10,
                physics: NeverScrollableScrollPhysics(),
                padding: EdgeInsets.all(0),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 0.61,
                    crossAxisSpacing: 10,
                    crossAxisCount: 2),
                itemBuilder: (context, index) {
                  return CardItem();
                },
              ),
              const SizedBox(
                height: kBottomNavigationBarHeight,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
















// class MyHomePage extends StatefulWidget {
//   MyHomePage({
//     Key? key,
//   }) : super(key: key);

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     final themestate = Provider.of<DarkProvider>(context);
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text(''),
//       ),
//       body: Center(
//         child: ElevatedButton(
//             onPressed: () {
//               setState(() {
//                 //true = ¡true
//                 themestate.setDarkTheme = !themestate.getdarktheme;
//                 log(themestate.getdarktheme.toString());
//               });
//             },
//             child: const Text("data")),
//       ),
//     );
//   }
// }
