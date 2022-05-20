import 'package:flutter/material.dart';

class UserHistoryScreen extends StatefulWidget {
  const UserHistoryScreen({Key? key}) : super(key: key);

  @override
  State<UserHistoryScreen> createState() => _UserHistoryScreenState();
}

class _UserHistoryScreenState extends State<UserHistoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User History'),
      ),
      body: Column(
        children: [
          TextField(
            // controller: _controller,
            decoration: InputDecoration(
              hintText: "Search by user name",
              suffixIcon: IconButton(
                onPressed: () => {},
                icon: const Icon(
                  Icons.search,
                ),
              ),
            ),
          ),
          Card(
            child: Image.asset('assets/images/map_dummy.png'),
          ),
        ],
      ),
    );
  }
}
