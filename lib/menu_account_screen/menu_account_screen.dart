import 'package:flutter/material.dart';
import 'package:task_w2/about_us_screen/about_us_screen.dart';
import 'package:task_w2/language_screen/language_screen.dart';
import 'package:task_w2/profile_screen/profile_screen.dart';
import 'package:task_w2/setting_screen/setting_screen.dart';

class MeunuAccountScreen extends StatefulWidget {
  const MeunuAccountScreen({Key? key}) : super(key: key);

  @override
  State<MeunuAccountScreen> createState() => _MeunuAccountScreenState();
}

class _MeunuAccountScreenState extends State<MeunuAccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  height: 200,
                  width: 400,
                  margin: const EdgeInsets.only(top: 50),
                  child: Column(
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color.fromARGB(255, 207, 206, 206)),
                        child: Image.asset('lib/assets/images/soi1.png'),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 20, bottom: 10),
                        child: Text(
                          'Nguyễn Đức Hải',
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.w600),
                        ),
                      ),
                      const Text(
                        'Sales Manager',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(bottom: 20),
                            child: Icon(
                              Icons.person_2_outlined,
                              size: 35,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: 20),
                            child: Icon(
                              Icons.person_2_outlined,
                              size: 35,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: 20),
                            child: Icon(
                              Icons.library_books_outlined,
                              size: 30,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: 20),
                            child: Icon(
                              Icons.language_outlined,
                              size: 30,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: 20),
                            child: Icon(
                              Icons.mail_outline,
                              size: 30,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: 20),
                            child: Icon(
                              Icons.settings_outlined,
                              size: 30,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: 20),
                            child: Icon(
                              Icons.account_balance_outlined,
                              size: 30,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                bottom: 20, left: 20, top: 10),
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: ((context) =>
                                            const ProfileScreen())));
                              },
                              child: const Text(
                                'Hồ sơ cá nhân',
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                          ),
                          const Padding(
                            padding:
                                EdgeInsets.only(bottom: 20, left: 20, top: 10),
                            child: Text(
                              'Báo cáo',
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(
                              bottom: 30,
                              left: 20,
                              top: 5,
                            ),
                            child: Text(
                              'Kho kiến thức',
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              bottom: 20,
                              left: 20,
                            ),
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: ((context) =>
                                            LanguageScreen())));
                              },
                              child: Text(
                                'Ngôn ngữ',
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                          ),
                          const Padding(
                            padding:
                                EdgeInsets.only(bottom: 30, left: 20, top: 5),
                            child: Text(
                              'Đóng góp ý kiến',
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              bottom: 30,
                              left: 20,
                            ),
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: ((context) =>
                                            const SettingScreen())));
                              },
                              child: const Text(
                                'Cài đặt',
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              bottom: 30,
                              left: 20,
                            ),
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: ((context) =>
                                            const AboutUsScreen())));
                              },
                              child: const Text(
                                'About Us',
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Padding(
                            padding:
                                EdgeInsets.only(top: 10, bottom: 30, left: 120),
                            child: Icon(Icons.arrow_forward_ios),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              bottom: 25,
                            ),
                            child: Icon(Icons.arrow_forward_ios),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              bottom: 25,
                            ),
                            child: Icon(Icons.arrow_forward_ios),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              bottom: 25,
                            ),
                            child: Row(
                              children: [
                                Text(
                                  'Tiếng việt',
                                  style: TextStyle(
                                      color:
                                          Color.fromARGB(255, 107, 106, 106)),
                                ),
                                Icon(Icons.arrow_forward_ios),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              bottom: 30,
                            ),
                            child: Icon(Icons.arrow_forward_ios),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              bottom: 30,
                            ),
                            child: Icon(Icons.arrow_forward_ios),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              bottom: 30,
                            ),
                            child: Icon(Icons.arrow_forward_ios),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Icon(
                        Icons.logout_outlined,
                        color: Colors.blue,
                        size: 35,
                      ),
                    ),
                    Text(
                      'Đăng xuất',
                      style: TextStyle(color: Colors.blue, fontSize: 20),
                    )
                  ],
                )
              ],
            ),
            Positioned(
                top: 50,
                left: 20,
                child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(
                    Icons.arrow_back_ios_new_outlined,
                    size: 30,
                    color: Colors.blue,
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
