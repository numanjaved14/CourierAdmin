import 'package:courier_admin/views/screens/courier_approved.dart';
import 'package:courier_admin/views/screens/courier_declined.dart';
import 'package:courier_admin/views/screens/courier_requests.dart';
import 'package:courier_admin/views/widgets/courier_item.dart';
import 'package:flutter/material.dart';

class CourierPage extends StatelessWidget {
  const CourierPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Courier Page'),
          bottom: const TabBar(
            tabs: [
              Tab(
                text: 'Requests',
              ),
              Tab(
                text: 'Approved',
              ),
              Tab(
                text: 'Declined',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            const CourierRequests(),
            const CourierApproved(),
            const CourierDeclined(),
          ],
        ),
      ),
    );
    // return Scaffold(
    //   appBar: AppBar(title: const Text('Courier Page')),
    //   body: SafeArea(
    //     child: ListView.builder(
    //       itemCount: 20,
    //       itemBuilder: (context, index) => const CourierWidget(),
    //     ),
    //   ),
    // );
  }
}
