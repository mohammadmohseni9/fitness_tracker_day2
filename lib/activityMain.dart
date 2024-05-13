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
                border: Border.all(color: Colors.grey.shade500),
              ),
              padding: const EdgeInsets.only(left: 24, top: 24, bottom: 24),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.favorite_border,
                    color: Colors.red,
                  ),
                  Spacer(),
                  Text(
                    "151",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "bpm",
                    style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.w300,
                      color: Colors.grey,
                    ),
                  ),
                  Spacer(),
                  Text(
                    "Heart rate",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            )),
        Expanded(
          flex: 1,
          child: Container(
            padding: const EdgeInsets.only(left: 24, top: 24, bottom: 24),
            margin: EdgeInsets.only(left: 8, bottom: 8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: Colors.grey.shade500),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.whatshot,
                  color: Colors.orange[500],
                ),
                const Spacer(),
                const Text(
                  "450",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  "Kcal",
                  style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.w300,
                    color: Colors.grey,
                  ),
                ),
                const Spacer(),
                const Text(
                  "Calories",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
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
              margin: const EdgeInsets.only(right: 8, top: 8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: Colors.grey.shade500),
              ),
              padding: const EdgeInsets.only(left: 24, top: 24, bottom: 24),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.directions_walk,
                    color: Colors.red,
                  ),
                  Spacer(),
                  Text(
                    "6550",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Steps",
                    style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.w300,
                      color: Colors.grey,
                    ),
                  ),
                  Spacer(),
                  Text(
                    "Step",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            )),
        Expanded(
          flex: 1,
          child: Container(
            margin: const EdgeInsets.only(left: 8, top: 8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: Colors.grey.shade500),
            ),
            padding: const EdgeInsets.only(left: 24, top: 24, bottom: 24),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.local_drink,
                  color: Colors.blue,
                ),
                Spacer(),
                Text(
                  "4",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Cups",
                  style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.w300,
                    color: Colors.grey,
                  ),
                ),
                Spacer(),
                Text(
                  "Water",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}
