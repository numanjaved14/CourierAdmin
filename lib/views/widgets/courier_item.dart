import 'dart:typed_data';

import 'package:courier_admin/services/databse_services.dart';
import 'package:flutter/material.dart';

class CourierWidget extends StatefulWidget {
  var snap;
  CourierWidget({
    Key? key,
    required this.snap,
  }) : super(key: key);

  @override
  State<CourierWidget> createState() => _CourierWidgetState();
}

class _CourierWidgetState extends State<CourierWidget> {
  Uint8List? file;

  @override
  void initState() {
    // Future<Uint8List> response = readImage(widget.snap['photoUrl'].toString());
    // setState(() {
    //   file = response as Uint8List;
    // });
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8.0,
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: NetworkImage(widget.snap['photoUrl']),
        ),
        title: Text(
          widget.snap['username'].toString(),
          style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.snap['email'].toString(),
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Color(0xff404040),
              ),
            ),
            Text(
              'Vehicle registrationn Number:' +
                  widget.snap['vehicleRegNo'].toString(),
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Color(0xff404040),
              ),
            ),
            // Text(
            //   'Orders Completed: 25',
            //   style: TextStyle(
            //     fontSize: 16,
            //     fontWeight: FontWeight.bold,
            //     color: Color(0xff404040),
            //   ),
            // ),
            // Text(
            //   'Total Income: 2507\$',
            //   style: TextStyle(
            //     fontSize: 16,
            //     fontWeight: FontWeight.bold,
            //     color: Color(0xff404040),
            //   ),
            // ),
            widget.snap['isApproved'] == false &&
                    widget.snap['isDeclined'] == false
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: () => acceptUser(
                          widget.snap['id'],
                        ),
                        child: Text('Accept'),
                      ),
                      ElevatedButton(
                        onPressed: () => declineUser(
                          widget.snap['id'],
                        ),
                        child: Text('Decline'),
                      ),
                    ],
                  )
                : widget.snap['isDeclined'] == true &&
                        widget.snap['isApproved'] == false
                    ? Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ElevatedButton(
                            onPressed: () => acceptUser(
                              widget.snap['id'],
                            ),
                            child: Text('Accept'),
                          ),
                        ],
                      )
                    : const SizedBox(),
          ],
        ),
      ),
    );
  }

  void acceptUser(String uid) async {
    print('Function is called');
    var res = await DataBaseMethods().approveUser(uid: uid);
    if (res == 'Success') {
      setState(() {
        widget.snap['isApproved'] = true;
      });
      print('User is authenticated successfully');
    } else
      print(res);
  }

  void declineUser(String uid) async {
    print('Function is called');
    var res = await DataBaseMethods().declineUser(uid: uid);
    if (res == 'Success') {
      setState(() {
        widget.snap['isDeclined'] = true;
      });
      print('User is declined successfully');
    } else
      print(res);
  }
}
