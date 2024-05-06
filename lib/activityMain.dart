import 'package:flutter/material.dart';

Container activityContainer(BuildContext context) {
  return Container(
    height: MediaQuery.of(context).size.height / 1.7,
    margin: const EdgeInsets.only(left: 1),
    child: Column(
      children: [
        tpExpanded(),
        btExpanded(),
      ],
    ),
  );
}

Widget tpExpanded() {
  return Expanded(
    flex: 1,
    child: Row(
      children: [
        Expanded(
            flex: 1,
            child: Container(
              margin: EdgeInsets.only(right: 8, bottom: 8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                border: Border.all(),
              ),
              child: Column(
                children: [
                  Icon(
                    Icons.favorite_border,
                    color: Colors.red,
                  ),
                  Text("Favorite")
                ],
              ),
            )),
        Expanded(
          flex: 1,
          child: Container(
            margin: EdgeInsets.only(left: 8, bottom: 8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              border: Border.all(),
            ),
          ),
        ),
      ],
    ),
  );
}

Widget btExpanded() {
  return Expanded(
    flex: 1,
    child: Row(
      children: [
        Expanded(
            flex: 1,
            child: Container(
              margin: EdgeInsets.only(right: 8, top: 8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                border: Border.all(),
              ),
            )),
        Expanded(
          flex: 1,
          child: Container(
            margin: EdgeInsets.only(left: 8, top: 8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              border: Border.all(),
            ),
          ),
        ),
      ],
    ),
  );
}
