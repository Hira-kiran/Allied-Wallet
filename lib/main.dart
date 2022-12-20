import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'Screens/splash.dart';

void main() {
  runApp(DevicePreview(enabled: true, builder: ((context) => const MyApp())));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      splitScreenMode: true,
      minTextAdapt: true,
      builder: (context, child) {
        return MaterialApp(
          theme: ThemeData(brightness: Brightness.dark),
          debugShowCheckedModeBanner: false,
          title: 'MY APP',
          home: const SplashScreen(),
        );
      },
    );
  }
}
