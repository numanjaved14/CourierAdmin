import 'dart:html';
import 'dart:ui';

import 'package:courier_admin/views/widgets/bar_chart.dart';
import 'package:flutter/material.dart';

class DahboardScreen extends StatefulWidget {
  const DahboardScreen({Key? key}) : super(key: key);

  @override
  State<DahboardScreen> createState() => _DahboardScreenState();
}

class _DahboardScreenState extends State<DahboardScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Card(
            elevation: 10,
            color: Colors.grey.shade200,
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Hello Floyed!',
                    style: TextStyle(
                      fontSize: 34,
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                      // shadows: [
                      //   Shadow(
                      //     color: Colors.red,
                      //     blurRadius: 3.0,
                      //     offset: Offset(-2.0, 2.0),
                      //   ),
                      // ],
                    ),
                  ),
                  const Text(
                    'Here is the overall status update on the orders placed by the users',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                      // shadows: [
                      //   Shadow(
                      //     color: Colors.red,
                      //     blurRadius: 3.0,
                      //     offset: Offset(-2.0, 2.0),
                      //   ),
                      // ],
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  const Text(
                    'Delivery Stats',
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff404040),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Card(
                        child: SizedBox(
                          // height: 100,
                          width: 300,
                          child: ListTile(
                            leading: SizedBox(
                              height: 50,
                              width: 50,
                              child: Image.asset(
                                'assets/images/check.png',
                              ),
                            ),
                            title: const Text(
                              '149',
                              style: TextStyle(
                                fontSize: 26,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            subtitle: const Text(
                              'Delivered',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff404040),
                              ),
                            ),
                            trailing: SizedBox(
                              height: 50,
                              width: 50,
                              child: Image.asset(
                                'assets/images/stats.png',
                              ),
                            ),
                          ),
                        ),
                      ),
                      const Spacer(),
                      Card(
                        child: SizedBox(
                          // height: 100,
                          width: 300,
                          child: ListTile(
                            leading: SizedBox(
                              height: 50,
                              width: 50,
                              child: Image.asset(
                                'assets/images/delivery.png',
                              ),
                            ),
                            title: const Text(
                              '149',
                              style: TextStyle(
                                fontSize: 26,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            subtitle: const Text(
                              'Out for Delivery',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff404040),
                              ),
                            ),
                            trailing: SizedBox(
                              height: 50,
                              width: 50,
                              child: Image.asset(
                                'assets/images/stats.png',
                              ),
                            ),
                          ),
                        ),
                      ),
                      const Spacer(),
                      Card(
                        child: SizedBox(
                          // height: 100,
                          width: 300,
                          child: ListTile(
                            leading: SizedBox(
                              height: 50,
                              width: 50,
                              child: Image.asset(
                                'assets/images/failed.png',
                              ),
                            ),
                            title: const Text(
                              '149',
                              style: TextStyle(
                                fontSize: 26,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            subtitle: const Text(
                              'Failed Orders',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff404040),
                              ),
                            ),
                            trailing: SizedBox(
                              height: 50,
                              width: 50,
                              child: Image.asset(
                                'assets/images/stats.png',
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  const Text(
                    'User Stats',
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff404040),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Card(
                    child: SizedBox(
                      // height: 100,
                      width: 300,
                      child: ListTile(
                        leading: SizedBox(
                          height: 50,
                          width: 50,
                          child: Image.asset(
                            'assets/images/user.png',
                          ),
                        ),
                        title: const Text(
                          '14900',
                          style: TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        subtitle: const Text(
                          'Total Users',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff404040),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  const Text(
                    'Number of Orders (Graph)',
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff404040),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: size.height * 0.5,
                    width: size.width,
                    child: const BarChartWidget(),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
