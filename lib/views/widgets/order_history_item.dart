import 'package:flutter/material.dart';

class OrderHistoryWidget extends StatelessWidget {
  const OrderHistoryWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8.0,
      child: ListTile(
        title: Row(
          children: const [
            Text('Order Name: Glass Box'),
            Spacer(),
            Text(
              '• Completed',
              style: TextStyle(color: Colors.green),
            ),
          ],
        ),
        subtitle: Column(
          children: const [
            Text('Order ID: x-001'),
            Text('Delivery Data: Jan 8, 2022'),
            Text('Courier Name: Ahmad'),
            Text('User Name: Zaviar'),
            Text('Payment: \$10'),
          ],
        ),
      ),
    );
  }
}
