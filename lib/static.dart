import 'package:fl_chart/fl_chart.dart';
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
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  PopupMenuButton(
                      child: Icon(Icons.more_horiz),
                      itemBuilder: ((context) => [
                            const PopupMenuItem(child: Text("History")),
                            const PopupMenuItem(child: Text("Settings")),
                            const PopupMenuItem(child: Text("About Us")),
                          ])),
                  const Text(
                    "Statistics",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
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
            padding: EdgeInsets.only(top: 47),
            child: Container(
              padding: const EdgeInsets.only(left: 27, top: 35, right: 27),
              height: MediaQuery.of(context).size.height - 151,
              decoration: const BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(32),
                  topRight: Radius.circular(32),
                ),
              ),
              child: Column(
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Walk",
                        style: TextStyle(
                          fontSize: 28,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Spacer(),
                      Icon(
                        Icons.calendar_today,
                        color: Colors.white,
                        size: 18,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        "24 july , 2021",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 28,
                        width: 70,
                        decoration: BoxDecoration(
                          border:
                              Border.all(color: Colors.white.withOpacity(.3)),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: const Center(
                          child: Text(
                            "Day",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 18,
                      ),
                      Container(
                        height: 28,
                        width: 70,
                        decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Center(
                          child: Text(
                            "Week",
                            style:
                                TextStyle(color: Colors.white.withOpacity(.6)),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 18,
                      ),
                      Container(
                        height: 28,
                        width: 70,
                        decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Center(
                          child: Text(
                            "Month",
                            style:
                                TextStyle(color: Colors.white.withOpacity(.6)),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 220,
                    child: Column(
                      children: [
                        Expanded(
                          flex: 4,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                "6550",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 48,
                                    fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                width: 30,
                              ),
                              Text(
                                "steps",
                                style: TextStyle(
                                  color: Colors.white.withOpacity(0.4),
                                  fontSize: 28,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "5.1",
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    "distance",
                                    style: TextStyle(
                                      color: Colors.white.withOpacity(0.4),
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "450",
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    "kcal",
                                    style: TextStyle(
                                      color: Colors.white.withOpacity(0.4),
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "15 Km/h",
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    "average speed",
                                    style: TextStyle(
                                        color: Colors.white.withOpacity(0.4)),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 200,
                    width: MediaQuery.of(context).size.width,
                    child: BarChart(
                      BarChartData(
                          alignment: BarChartAlignment.spaceBetween,
                          gridData: const FlGridData(show: false),
                          maxY: 20,
                          titlesData: const FlTitlesData(
                            show: true,
                            bottomTitles: AxisTitles(
                              sideTitles: SideTitles(
                                showTitles: true,
                                getTitlesWidget: getTitles,
                              ),
                            ),
                            leftTitles: AxisTitles(
                              sideTitles: SideTitles(
                                showTitles: false,
                              ),
                            ),
                            rightTitles: AxisTitles(
                              sideTitles: SideTitles(
                                showTitles: false,
                              ),
                            ),
                            topTitles: AxisTitles(
                                sideTitles: SideTitles(
                              showTitles: false,
                            )),
                          ),
                          borderData: FlBorderData(
                            show: false,
                          ),
                          barGroups: [
                            BarChartGroupData(
                              x: 0,
                              barRods: [
                                BarChartRodData(toY: 10, color: Colors.red[400])
                              ],
                            ),
                            BarChartGroupData(
                              x: 1,
                              barRods: [
                                BarChartRodData(toY: 4, color: Colors.yellow)
                              ],
                            ),
                            BarChartGroupData(
                              x: 2,
                              barRods: [
                                BarChartRodData(toY: 7, color: Colors.orange)
                              ],
                            ),
                            BarChartGroupData(
                              x: 3,
                              barRods: [
                                BarChartRodData(toY: 2, color: Colors.yellow)
                              ],
                            ),
                            BarChartGroupData(
                              x: 4,
                              barRods: [
                                BarChartRodData(toY: 7, color: Colors.orange)
                              ],
                            ),
                            BarChartGroupData(
                              x: 5,
                              barRods: [
                                BarChartRodData(
                                    toY: 6, color: Colors.orange[600])
                              ],
                            ),
                            BarChartGroupData(
                              x: 6,
                              barRods: [
                                BarChartRodData(toY: 13, color: Colors.red[300])
                              ],
                            ),
                            BarChartGroupData(
                              x: 7,
                              barRods: [
                                BarChartRodData(
                                    toY: 5, color: Colors.yellow[600])
                              ],
                            ),
                          ]),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 50),
                    child: SizedBox(
                      height: 80,
                      child: Row(
                        children: [
                          Container(
                            height: 58,
                            width: 52,
                            decoration: BoxDecoration(
                              color: Colors.red[300],
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: const Center(
                              child: Icon(
                                Icons.favorite_border,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          const Spacer(),
                          SizedBox(
                            width: 100,
                            child: Stack(
                              children: [
                                const Positioned(
                                  top: 0,
                                  right: 20,
                                  child: Text(
                                    "Min",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                                Positioned(
                                  top: 15,
                                  left: 16,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        "64",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 27),
                                      ),
                                      Text(
                                        "bpm",
                                        style: TextStyle(
                                          color: Colors.white.withOpacity(0.4),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 24,
                          ),
                          SizedBox(
                            width: 100,
                            child: Stack(
                              children: [
                                const Positioned(
                                  top: 0,
                                  right: 20,
                                  child: Text(
                                    "Max",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                                Positioned(
                                  top: 15,
                                  left: 16,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        "143",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 27),
                                      ),
                                      Text(
                                        "bpm",
                                        style: TextStyle(
                                          color: Colors.white.withOpacity(0.4),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget getTitles(double value, TitleMeta meta) {
  const style = TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.bold,
    fontSize: 14,
  );
  Widget text;
  switch (value.toInt()) {
    case 0:
      text = const Text('10', style: style);
      break;
    case 1:
      text = const Text('4', style: style);
      break;
    case 2:
      text = const Text('7', style: style);
      break;
    case 3:
      text = const Text('2', style: style);
      break;
    case 4:
      text = const Text('7', style: style);
      break;
    case 5:
      text = const Text('6', style: style);
      break;
    case 6:
      text = const Text('13', style: style);
      break;
    case 7:
      text = const Text('5', style: style);
      break;
    default:
      text = const Text('5', style: style);
      break;
  }
  return SideTitleWidget(
    axisSide: meta.axisSide,
    space: 7,
    child: text,
  );
}
