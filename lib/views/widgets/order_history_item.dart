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
            Text(
              'Order Name: Glass Box',
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Spacer(),
            Text(
              '• Completed',
              style: TextStyle(
                color: Colors.green,
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Order ID: x-001',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Color(0xff404040),
              ),
            ),
            Text(
              'Delivery Data: Jan 8, 2022',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Color(0xff404040),
              ),
            ),
            Text(
              'Courier Name: Ahmad',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Color(0xff404040),
              ),
            ),
            Text(
              'User Name: Zaviar',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Color(0xff404040),
              ),
            ),
            Text(
              'Payment: \$10',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Color(0xff404040),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
