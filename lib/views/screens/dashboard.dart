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
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: const [
            Text('Total Users:  2349'),
            Text('Total Courier: 941'),
            BarChartWidget(),
          ],
        ),
      ),
    );
  }
}
