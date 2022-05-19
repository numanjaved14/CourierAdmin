import 'package:flutter/material.dart';

class CourierWidget extends StatelessWidget {
  const CourierWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8.0,
      child: ListTile(
        leading: Image.network(
          'https://pbs.twimg.com/profile_images/685700874434314240/80T5j3HF_400x400.jpg',
          fit: BoxFit.cover,
        ),
        title: const Text('Numan'),
        subtitle: Column(
          children: const [
            Text('Phone Number: +924441234567'),
            Text('Registration date: Jan, 8, 2022'),
            Text('Orders Completed: 25'),
            Text('Total Income: Jan, 8, 2022'),
          ],
        ),
      ),
    );
  }
}
