import 'package:flutter/material.dart';
import 'package:online_site/mode/const/style.dart';

import 'package:provider/provider.dart';
import 'bottom_bar.dart';
import 'screen/homepage.dart';
import 'mode/dark_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ThemeProvider themeChangeProvider = ThemeProvider();

  @override
  void initState() {
    currentTheme();
    super.initState();
  }

  void currentTheme() async {
    themeChangeProvider.setDarkTheme =
        await themeChangeProvider.themePref.getDarkTheme();
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) {
            return themeChangeProvider;
          },
        ),
      ],
      child:
          Consumer<ThemeProvider>(builder: (context, themeChangeProvider, ch) {
        return MaterialApp(
          theme: Styles.themeData(themeChangeProvider.getdarkTheme, context),
          debugShowCheckedModeBanner: false,
          home: const BottomBarScreen(),
        );
      }),
    );
  }
}

// class MyApp extends StatefulWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   DarkProvider darkProvider = DarkProvider();

//   @override
//   void initState() {
//     checkTheme();
//     super.initState();
//   }

//   void checkTheme() async {
//     darkProvider.setDarkTheme = await darkProvider.darkModePref.getpref();
//     // log('${the}.toString()');
//   }

//   @override
//   Widget build(BuildContext context) {
//     // final themestate = Provider.of<DarkProvider>(context);
//     return MultiProvider(
//       providers: [
//         ChangeNotifierProvider(
//           create: (_) {
//             return darkProvider;
//           },
//         ),
//       ],
//       child: Consumer<DarkProvider>(
//           builder: (BuildContext context, darkProvider, ch) {
//         return MaterialApp(
//           debugShowCheckedModeBanner: false,
//           theme: ThemeData(
//               brightness: darkProvider.getdarktheme
//                   ? Brightness.dark
//                   : Brightness.light),
//           home: MyHomePage(),
//         );
//       }),
//     );
//   }
// }
