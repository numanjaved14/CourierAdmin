import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';

import '../widgets/courier_item.dart';

class CourierApproved extends StatefulWidget {
  const CourierApproved({Key? key}) : super(key: key);

  @override
  State<CourierApproved> createState() => _CourierApprovedState();
}

class _CourierApprovedState extends State<CourierApproved> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: FirebaseFirestore.instance
            .collection('users')
            .where('isApproved', isEqualTo: true)
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
