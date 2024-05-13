import 'package:fitnessapp_day2/activityMain.dart';
import 'package:fitnessapp_day2/static.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:page_transition/page_transition.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const mainPage(),
    );
  }
}

class mainPage extends StatefulWidget {
  const mainPage({super.key});

  @override
  State<mainPage> createState() => _mainPageState();
}

class _mainPageState extends State<mainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            bottom: 180,
            top: 0,
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10, top: 10),
                        child: PopupMenuButton(
                            child: Icon(
                              Icons.menu,
                              size: 27,
                            ),
                            itemBuilder: ((context) => [
                                  const PopupMenuItem(child: Text("Page 2")),
                                  const PopupMenuItem(child: Text("Page 3")),
                                  const PopupMenuItem(child: Text("Page 4")),
                                ])),
                      ),
                      const CircleAvatar(
                        backgroundColor: Colors.black,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 8, bottom: 15),
                    child: Text(
                      "Activity",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 26,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  activityContainer(context)
                ],
              ),
            ),
          ),
          Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                height: 88,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Statistics",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    IconButton(
                      color: Colors.white,
                      onPressed: () {
                        Navigator.of(context).push(PageTransition(
                            child: const StaticPagee(),
                            type: PageTransitionType.bottomToTop));
                      },
                      icon: const Icon(Icons.keyboard_arrow_up),
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
