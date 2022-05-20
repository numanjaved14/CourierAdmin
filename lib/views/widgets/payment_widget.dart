import 'package:courier_admin/views/widgets/pie_chart.dart';
import 'package:flutter/material.dart';

class PaymentWidget extends StatelessWidget {
  const PaymentWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8.0,
      child: Column(children: [
        Text('Total Payment: \$100'),
        Text('Courier Name: Ahmad'),
        PieChartSample2(),
      ],)
    );
  }
}
