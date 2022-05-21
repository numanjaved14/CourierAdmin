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
        title: const Text(
          'Numan',
          style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Phone Number: +924441234567',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Color(0xff404040),
              ),
            ),
            Text(
              'Registration date: Jan, 8, 2022',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Color(0xff404040),
              ),
            ),
            Text(
              'Orders Completed: 25',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Color(0xff404040),
              ),
            ),
            Text(
              'Total Income: 2507\$',
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
