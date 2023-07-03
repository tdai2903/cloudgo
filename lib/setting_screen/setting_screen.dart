import 'package:flutter/material.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 230, 230, 230),
      body: SingleChildScrollView(
          child: (Column(
        children: [
          Container(
            height: 100,
            color: Colors.white,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30, left: 20, right: 100),
                  child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Icon(
                      Icons.arrow_back_ios,
                      size: 30,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(
                    top: 30,
                  ),
                  child: Text(
                    'Setting',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 20),
            height: 80,
            color: Colors.white,
            margin: const EdgeInsets.only(top: 10),
            child: const Row(children: [
              Icon(
                Icons.change_circle_outlined,
                size: 30,
              ),
              Padding(
                padding: EdgeInsets.only(left: 30),
                child: Text(
                  'Change Password',
                  style: TextStyle(fontSize: 20),
                ),
              )
            ]),
          ),
          Container(
            padding: const EdgeInsets.only(left: 20),
            height: 80,
            color: Colors.white,
            margin: const EdgeInsets.only(top: 10),
            child: const Row(children: [
              Icon(
                Icons.language_outlined,
                size: 30,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 30,
                ),
                child: Text(
                  'Language',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 150),
                child: Text('English'),
              ),
              Icon(Icons.arrow_forward_ios)
            ]),
          ),
          Container(
            padding: const EdgeInsets.only(left: 20),
            height: 80,
            color: Colors.white,
            margin: const EdgeInsets.only(top: 10),
            child: const Row(children: [
              Icon(
                Icons.notifications_none,
                size: 30,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 30,
                ),
                child: Text(
                  'Notifications',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ]),
          ),
          Container(
            padding: const EdgeInsets.only(left: 20),
            height: 80,
            color: Colors.white,
            margin: const EdgeInsets.only(top: 10),
            child: const Row(children: [
              Icon(
                Icons.logout_outlined,
                size: 30,
                color: Colors.red,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 30,
                ),
                child: Text(
                  'Sign Out',
                  style: TextStyle(fontSize: 20, color: Colors.red),
                ),
              ),
            ]),
          ),
          ListTile(
            hoverColor: Colors.white,
            onTap: () {},
            leading: const Icon(Icons.language_outlined),
            title: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('da'),
                Row(
                  children: [Text('Language'), Icon(Icons.arrow_forward_ios)],
                ),
              ],
            ),
          ),
        ],
      ))),
    );
  }
}
