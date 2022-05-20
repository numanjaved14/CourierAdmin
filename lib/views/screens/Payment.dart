import 'package:courier_admin/views/widgets/courier_item.dart';
import 'package:flutter/material.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView.builder(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
          itemCount: 20,
          itemBuilder: (context, index) => const CourierWidget(),
        ),
      ),
    );
  }
}
