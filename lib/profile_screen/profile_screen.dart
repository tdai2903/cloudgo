import 'package:flutter/material.dart';
import 'package:task_w2/edit_profile_screen/edit_profile_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 247, 247, 247),
      appBar: AppBar(title: const Text('Hồ sơ')),
      body: ListView(
        children: [
          Stack(
            children: [
              Column(
                children: [
                  Container(
                    height: 420,
                    width: 400,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(width: 0.2),
                        color: Colors.white),
                    margin: const EdgeInsets.only(top: 70, left: 20, right: 20),
                    child: Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(top: 50, bottom: 10),
                          child: Text(
                            'Nguyễn Đức Hải',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500),
                          ),
                        ),
                        const Text(
                          'Sales Manager',
                          style: TextStyle(
                              fontWeight: FontWeight.w300, fontSize: 16),
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                              left: 15, right: 15, top: 20),
                          decoration: const BoxDecoration(
                              border: Border(bottom: BorderSide(width: 0.2))),
                          child: const Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(bottom: 10),
                                child: Text(
                                  'Username   :',
                                  style: TextStyle(fontWeight: FontWeight.w300),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(bottom: 10, left: 5),
                                child: Text('hai.nguyen'),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                              left: 15, right: 15, top: 20),
                          decoration: const BoxDecoration(
                              border: Border(bottom: BorderSide(width: 0.2))),
                          child: const Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(bottom: 10),
                                child: Text('SĐT              :',
                                    style:
                                        TextStyle(fontWeight: FontWeight.w300)),
                              ),
                              Padding(
                                padding: EdgeInsets.only(bottom: 10, left: 5),
                                child: Text('079 668 6055'),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                              left: 15, right: 15, top: 20),
                          decoration: const BoxDecoration(
                              border: Border(bottom: BorderSide(width: 0.2))),
                          child: const Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(bottom: 10),
                                child: Text('Email           :',
                                    style:
                                        TextStyle(fontWeight: FontWeight.w300)),
                              ),
                              Padding(
                                padding: EdgeInsets.only(bottom: 10, left: 5),
                                child: Text('hai.nguyen@gmail.com'),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                              left: 15, right: 15, top: 20),
                          decoration: const BoxDecoration(
                              border: Border(bottom: BorderSide(width: 0.2))),
                          child: const Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(bottom: 10),
                                child: Text('Giới tính      :',
                                    style:
                                        TextStyle(fontWeight: FontWeight.w300)),
                              ),
                              Padding(
                                padding: EdgeInsets.only(bottom: 10, left: 5),
                                child: Text('Nam'),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                              left: 15, right: 15, top: 20),
                          decoration: const BoxDecoration(
                              border: Border(bottom: BorderSide(width: 0.2))),
                          child: const Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(bottom: 10),
                                child: Text('Ngày sinh   :',
                                    style:
                                        TextStyle(fontWeight: FontWeight.w300)),
                              ),
                              Padding(
                                padding: EdgeInsets.only(bottom: 10, left: 5),
                                child: Text('20/11/2000'),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                              left: 15, right: 15, top: 20),
                          decoration: const BoxDecoration(
                              border: Border(bottom: BorderSide(width: 0.2))),
                          child: const Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(bottom: 10),
                                child: Text('Địa chỉ        :',
                                    style:
                                        TextStyle(fontWeight: FontWeight.w300)),
                              ),
                              Padding(
                                padding: EdgeInsets.only(bottom: 10, left: 5),
                                child: Text('13 đường 37, KĐT Vạn Phúc'),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Positioned(
                left: 0,
                right: 0,
                top: 10,
                child: Container(
                    height: 100,
                    width: 100,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromARGB(255, 230, 230, 230)),
                    child: Image.asset('lib/assets/images/soi1.png')),
              ),
              Positioned(
                left: 300,
                right: 40,
                top: 80,
                child: Container(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => EditProfileScreen())));
                    },
                    child: const Icon(
                      Icons.edit_outlined,
                      size: 30,
                      color: Colors.blue,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            height: 60,
            width: 360,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(width: 0.2),
                color: Colors.white),
            child: Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 10, right: 10),
                  child: const Icon(
                    Icons.note_add_outlined,
                    size: 30,
                    color: Colors.grey,
                  ),
                ),
                const Text(
                  'Hợp đồng',
                  style: TextStyle(
                    fontSize: 17,
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            height: 60,
            width: 360,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(width: 0.2),
                color: Colors.white),
            child: Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 10, right: 10),
                  child: const Icon(
                    Icons.key_outlined,
                    size: 30,
                    color: Colors.grey,
                  ),
                ),
                const Text(
                  'Đổi mật khẩu',
                  style: TextStyle(
                    fontSize: 17,
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            height: 70,
            width: 360,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(width: 0.2),
                color: Colors.white),
            child: Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 10, right: 10),
                  child: const Icon(
                    Icons.logout_outlined,
                    size: 30,
                    color: Colors.blue,
                  ),
                ),
                const Text(
                  'Đăng xuất',
                  style: TextStyle(fontSize: 17, color: Colors.blue),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
