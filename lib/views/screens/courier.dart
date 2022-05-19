import 'package:courier_admin/views/widgets/courier_item.dart';
import 'package:flutter/material.dart';

class CourierPage extends StatelessWidget {
  const CourierPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView.builder(
          itemCount: 20,
          itemBuilder: (context, index) => const CourierWidget(),
        ),
      ),
    );
  }
}
