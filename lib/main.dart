import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_study_layout/common_widgets/my_filled_button.dart';

void main() {
  runApp(DevicePreview(
    enabled: true,
    builder: (context) => const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      /// iPhone SE's size
      designSize: const Size(320, 568),
      builder: (context, child) {
        return MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            useMaterial3: true,
            colorSchemeSeed: Colors.brown,
          ),
          home: const MyHomePage(title: 'Layout Sample'),
        );
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text("MD3's FilledButton"),
            FilledButton(
              onPressed: () {},
              child: const Text('Enable'),
            ),
            const FilledButton(
              onPressed: null,
              child: Text('Disable'),
            ),
            const Text("My FilledButton"),
            MyFilledButton(
              onPressed: () {},
              minimumSize: const Size(100, 40),
              child: Text(
                'Sample Text',
                style: TextStyle(fontSize: 4.sp),
              ),
            ),
            MyFilledButton(
              onPressed: () {},
              minimumSize: const Size(100, 40),
              child: Text(
                'Sample Text Sample Text Sample Text',
                style: TextStyle(fontSize: 4.sp),
              ),
            ),
            MyFilledButton(
              onPressed: () {},
              minimumSize: const Size(200, 30),
              child: Text(
                'Sample Text',
                style: TextStyle(fontSize: 4.sp),
              ),
            ),
            MyFilledButton(
              onPressed: () {},
              minimumSize: const Size(300, 40),
              child: Text(
                'Sample Text',
                style: TextStyle(fontSize: 6.sp),
              ),
            ),
            MyFilledButton(
              onPressed: () {},
              padding: const EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 30,
              ),
              child: Text(
                'Sample Text\nSample Text',
                style: TextStyle(fontSize: 5.sp),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
