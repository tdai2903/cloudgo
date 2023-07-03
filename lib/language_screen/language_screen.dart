import 'package:flutter/material.dart';

class LanguageScreen extends StatelessWidget {
  const LanguageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 80,
        actions: [
          Row(
            children: [
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Padding(
                  padding: EdgeInsets.only(right: 100),
                  child: Icon(
                    Icons.arrow_back_ios,
                    size: 25,
                    color: Colors.white,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(right: 130),
                child: Text(
                  'Language',
                  style: TextStyle(fontSize: 26, color: Colors.white),
                ),
              )
            ],
          )
        ],
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(left: 20, right: 20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                border: Border.all(width: 0.4),
                color: Colors.amber[50]),
            height: 70,
            margin: const EdgeInsets.only(top: 30, left: 20, right: 20),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.language_outlined,
                  size: 30,
                ),
                Text(
                  'Tiếng Việt',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
                Icon(Icons.arrow_forward_ios_outlined)
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 20, right: 20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                border: Border.all(width: 0.4),
                color: Colors.blue[50]),
            height: 70,
            margin: const EdgeInsets.only(top: 30, left: 20, right: 20),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.language_outlined,
                  size: 30,
                ),
                Text(
                  'English',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
                Icon(Icons.arrow_forward_ios_outlined)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
