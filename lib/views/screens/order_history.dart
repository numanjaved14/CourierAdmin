import 'package:courier_admin/views/widgets/courier_item.dart';
import 'package:courier_admin/views/widgets/order_history_item.dart';
import 'package:flutter/material.dart';

class OrderHistoryPage extends StatelessWidget {
  const OrderHistoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Order History'),
          bottom: const TabBar(
            tabs: [
              Tab(
                text: 'Users',
              ),
              Tab(
                text: 'Reffered Users',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
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
                    itemBuilder: (context, index) => const OrderHistoryWidget(),
                  ),
                ),
              ],
            ),
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
  }
}
