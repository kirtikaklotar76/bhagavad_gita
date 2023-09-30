import 'package:bhagavad_gita/utils/routes_utils.dart';
import 'package:bhagavad_gita/views/screens/gitapage.dart';
import 'package:bhagavad_gita/views/screens/gitaDetailedPage.dart';
import 'package:bhagavad_gita/views/screens/homepage.dart';
import 'package:bhagavad_gita/views/screens/splashscreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'controller/gitacontroller.dart';
import 'controller/json_controller.dart';

void main() => runApp(
      MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => gitacontroller()),
          ChangeNotifierProvider(create: (context) => JSONController()),
        ],
        child: const MyApp(),
      ),
    );

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      initialRoute: MyRoutes.splashscrren,
      routes: {
        MyRoutes.splashscrren: (context) => const splashscrren(),
        MyRoutes.homepage: (context) => const HomePage(),
        MyRoutes.gitapage: (context) => const GitaPage(),
        MyRoutes.gitaDetailedPage: (context) => const GitaDetailedPage(),
      },
    );
  }
}
