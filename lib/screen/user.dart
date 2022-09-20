import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:helloworld/screen/clubs.dart';
import 'package:helloworld/screen/loginPage.dart';
import 'package:helloworld/widgets/text_widget.dart';

class UserScreen extends StatefulWidget {
  const UserScreen({Key? key}) : super(key: key);

  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  final TextEditingController _addressTextController =
      TextEditingController(text: "");

  @override
  void dispose() {
    _addressTextController.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        elevation: 0,
        title: TextWidget(
          text: "Profile",
          color: Colors.black,
          textSize: 24,
          isTitle: true,
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: const TextSpan(
                      text: 'Hi, ',
                      style: TextStyle(
                          color: Colors.cyan,
                          fontSize: 23,
                          fontWeight: FontWeight.bold),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Lawrence Smith',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 23,
                              fontWeight: FontWeight.w500),
                        )
                      ]),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextWidget(
                    text: 'email@gmail.com',
                    color: Color(0xff0e0c0c),
                    textSize: 18),
                const SizedBox(
                  height: 10,
                ),
                TextWidget(
                    text: 'Bsc Computer Science',
                    color: Color(0xff0e0c0c),
                    textSize: 18),
                const SizedBox(
                  height: 20,
                ),
                const Divider(
                  thickness: 2,
                ),
                const SizedBox(
                  height: 20,
                ),
                _listTiles(
                    title: 'Address',
                    subtitle: 'Evandy hostel',
                    icon: IconlyBold.location,
                    onPressed: () async {
                      await showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: const Text("Update Adrress"),
                              content: TextField(
                                onChanged: (value) {
                                  // _addressTextController
                                },
                                controller: _addressTextController,
                                maxLines: 5,
                                decoration: const InputDecoration(
                                    hintText: 'Your Address'),
                              ),
                              actions: [
                                TextButton(
                                    onPressed: () {},
                                    child: const Text('Update')),
                              ],
                            );
                          });
                    }),
                _listTiles(
                    title: 'Clubs',
                    icon: IconlyBold.user3,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ClubsScreen()));
                    }),
                _listTiles(
                    title: 'Forget Password',
                    icon: IconlyBold.lock,
                    onPressed: () {}),
                _listTiles(
                    title: 'Log Out',
                    icon: IconlyBold.logout,
                    onPressed: () async {
                      await showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: const Text('Sign Out'),
                              content: const Text("Do you want to sign out!"),
                              actions: [
                                TextButton(
                                    onPressed: () {
                                      if (Navigator.canPop(context)) {
                                        Navigator.pop(context);
                                      }
                                    },
                                    child: TextWidget(
                                        text: "Cancel",
                                        color: Colors.cyan,
                                        textSize: 18)),
                                TextButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => LoginPage(),
                                          ));
                                    },
                                    child: TextWidget(
                                        text: "OK",
                                        color: Colors.cyan,
                                        textSize: 18))
                              ],
                            );
                          });
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _listTiles({
    required String title,
    String? subtitle,
    required IconData icon,
    required Function onPressed,
  }) {
    return ListTile(
      title: Text(
        title,
        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
      ),
      subtitle: Text(
        subtitle == null ? "" : subtitle,
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
      ),
      leading: Icon(icon),
      trailing: const Icon(IconlyLight.arrowRight2),
      onTap: () {
        onPressed();
      },
    );
  }
}
