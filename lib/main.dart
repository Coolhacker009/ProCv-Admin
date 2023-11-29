import 'package:flutter/material.dart';
import 'package:procv_admin/Admin_pages/dashboard.dart';
import 'package:procv_admin/Admin_pages/home.dart';

const myPurple = const Color(0xff5E358A);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    // SystemUiOverlayStyle systemUiOverlayStyle = const SystemUiOverlayStyle(
    //     statusBarColor: Colors.transparent,
    //     statusBarBrightness: Brightness.light,
    //     systemNavigationBarIconBrightness: Brightness.dark,
    //     systemNavigationBarColor: Colors.transparent,
    //     systemNavigationBarDividerColor: Colors.transparent,
    //     systemNavigationBarContrastEnforced: false,
    //     systemStatusBarContrastEnforced: false);

    // SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);``
    // SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,0
    //     overlays: [SystemUiOverlay.top, SystemUiOverlay.bottom]);

    // SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky,
    //     overlays: [SystemUiOverlay.bottom]);
    // SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
    return MaterialApp(
      theme: ThemeData(primaryColor: myPurple, fontFamily: "Poppins"),
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: Dashboard(),
    );
  }
}
