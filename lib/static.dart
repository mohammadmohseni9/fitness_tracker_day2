import 'package:flutter/material.dart';

class StaticPagee extends StatefulWidget {
  const StaticPagee({super.key});

  @override
  State<StaticPagee> createState() => _StaticPageeState();
}

class _StaticPageeState extends State<StaticPagee> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SafeArea(
            left: true,
            right: true,
            top: true,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () {}, icon: const Icon(Icons.more_horiz)),
                  const Text("Static"),
                  IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: const Icon(Icons.keyboard_arrow_down)),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 64),
            child: Container(
              height: MediaQuery.of(context).size.height - 136,
              decoration: const BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(32),
                    topRight: Radius.circular(32),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
