import 'package:courier_admin/services/auth_methods.dart';
import 'package:courier_admin/views/screens/side_bar.dart';
import 'package:flutter/material.dart';

class LogIn extends StatelessWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController _emailController = TextEditingController();
    TextEditingController _passController = TextEditingController();
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text(
              'Return Post',
              style: TextStyle(
                fontSize: 34,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                // shadows: [
                //   Shadow(
                //     color: Colors.red,
                //     blurRadius: 3.0,
                //     offset: Offset(-2.0, 2.0),
                //   ),
                // ],
              ),
            ),
            Container(
              height: size.height * 0.4,
              width: size.width * 0.5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextField(
                      controller: _emailController,
                      decoration: const InputDecoration(
                        hintText: "E-Mail",
                        prefixIcon: Icon(Icons.person),
                      ),
                    ),
                    TextField(
                      controller: _passController,
                      decoration: const InputDecoration(
                        hintText: "Password",
                        prefixIcon: Icon(
                          Icons.key,
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () async {
                        var res = await AuthMethods().signInUser(
                            email: _emailController.text,
                            password: _passController.text);
                        if (res == 'Success') {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const SideDrawer(),
                            ),
                          );
                        }else{
 Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const SideDrawer(),
                            ),
                          );
                        }
                      },
                      child: const Text('Log In'),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
