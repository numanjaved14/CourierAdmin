import 'package:courier_admin/views/screens/courier_approved.dart';
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
            Column(
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
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.75,
                  child: ListView.builder(
                    itemCount: 20,
                    itemBuilder: (context, index) => Container(),
                  ),
                ),
              ],
            ),
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
