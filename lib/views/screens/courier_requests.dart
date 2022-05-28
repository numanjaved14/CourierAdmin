import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';

import '../widgets/courier_item.dart';

class CourierRequests extends StatefulWidget {
  const CourierRequests({Key? key}) : super(key: key);

  @override
  State<CourierRequests> createState() => _CourierRequestsState();
}

class _CourierRequestsState extends State<CourierRequests> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: FirebaseFirestore.instance
            .collection('users')
            .where('isApproved', isEqualTo: false)
            .where('isDeclined', isEqualTo: false)
            .snapshots(),
        builder: (context,
            AsyncSnapshot<QuerySnapshot<Map<String, dynamic>>> snapshot) {
          if (snapshot.hasData) {
            var snap = snapshot.data!.docs;
            return Column(
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
                    itemCount: snap.length,
                    itemBuilder: (context, index) =>
                        CourierWidget(snap: snap[index].data()),
                  ),
                ),
              ],
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        });
  }
}
