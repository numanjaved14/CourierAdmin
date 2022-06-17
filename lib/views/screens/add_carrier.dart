import 'dart:typed_data';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:courier_admin/services/databse_services.dart';
import 'package:courier_admin/views/screens/side_bar.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../../utils/utils.dart';

class AddCarrier extends StatefulWidget {
  const AddCarrier({Key? key}) : super(key: key);

  @override
  State<AddCarrier> createState() => _AddCarrierState();
}

class _AddCarrierState extends State<AddCarrier> {
  @override
  Widget build(BuildContext context) {
    TextEditingController _nameController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Brand'),
      ),
      body: StreamBuilder(
          stream: FirebaseFirestore.instance.collection('carriers').snapshots(),
          builder: (context,
              AsyncSnapshot<QuerySnapshot<Map<String, dynamic>>> snapshot) {
            if (snapshot.hasData) {
              var snap = snapshot.data!.docs;
              return Column(
                children: [
                  TextField(
                    controller: _nameController,
                    decoration: InputDecoration(
                      hintText: "Enter carrier name",
                      suffixIcon: IconButton(
                        onPressed: () async {
                          await DataBaseMethods()
                              .addCarrier(carrierName: _nameController.text)
                              .whenComplete(
                                () => Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                    builder: (context) => const SideDrawer(),
                                  ),
                                ),
                              );
                        },
                        icon: const Icon(
                          Icons.add,
                        ),
                      ),
                    ),
                  ),
                  // ElevatedButton(
                  //   onPressed: () async {
                  //     await DataBaseMethods()
                  //         .addBrand(brandName: _nameController.text)
                  //         .whenComplete(
                  //           () => Navigator.of(context).pushReplacement(
                  //             MaterialPageRoute(
                  //               builder: (context) => const SideDrawer(),
                  //             ),
                  //           ),
                  //         );
                  //   },
                  //   child: const Text('Add'),
                  // ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.75,
                    child: ListView.builder(
                      itemCount: snap.length,
                      itemBuilder: (context, index) => Card(
                        child: Text(
                          snap[index].data()['carrierName'],
                          style: Theme.of(context).textTheme.headline4,
                        ),
                      ),
                    ),
                  ),
                ],
              );
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          }),
    );
  }
}
