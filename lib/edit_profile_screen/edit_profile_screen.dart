import 'package:flutter/material.dart';
import 'dart:io';

import 'package:image_picker/image_picker.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  File? file;
  ImagePicker image = ImagePicker();
  void _showCalendar() {
    showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2023),
        lastDate: DateTime(2024));
  }

  getgall() async {
    var img = await image.pickImage(source: ImageSource.gallery);

    setState(() {
      file = File(img!.path);
    });
  }

  final TextEditingController userName = TextEditingController();
  final TextEditingController fullName = TextEditingController();
  final TextEditingController phoneNumber = TextEditingController();
  final TextEditingController email = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final maxWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 247, 246, 246),
      appBar: AppBar(title: const Text('Sửa thông tin tài khoản')),
      body: ListView(
        children: [
          Stack(
            children: [
              Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 70, left: 15, right: 15),
                    height: 700,
                    width: maxWidth,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(width: 0.2),
                        color: Colors.white),
                    child: Column(
                      children: [
                        const Padding(
                            padding: EdgeInsets.only(
                          top: 50,
                        )),
                        const Text(
                          'Nguyễn Đức Hải',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500),
                        ),
                        const Padding(padding: EdgeInsets.only(top: 10)),
                        const Text(
                          'Sales Manager',
                          style: TextStyle(
                              fontWeight: FontWeight.w300, fontSize: 16),
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                              top: 20, left: 10, right: 10),
                          height: 350,
                          width: 360,
                          child: Form(
                            key: _formKey,
                            child: ListView(children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  TextFormField(
                                    maxLength: 25,
                                    decoration: const InputDecoration(
                                        border: OutlineInputBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(20))),
                                        hintText: "duc.hai",
                                        hintStyle: TextStyle(fontSize: 16),
                                        label: Row(children: [
                                          Text('User Name'),
                                          Text(
                                            ' *',
                                            style: TextStyle(color: Colors.red),
                                          )
                                        ]),
                                        floatingLabelBehavior:
                                            FloatingLabelBehavior.auto,
                                        prefixIcon: Icon(
                                          Icons.person_2_outlined,
                                          color: Colors.grey,
                                        )),
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Please enter user name';
                                      }
                                      return null;
                                    },
                                  ),
                                ],
                              ),
                              TextFormField(
                                controller: fullName,
                                keyboardType: TextInputType.visiblePassword,
                                maxLength: 25,
                                decoration: const InputDecoration(
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20))),
                                    hintText: "Nguyễn Đức Hải",
                                    label: Row(children: [
                                      Text('Full Name'),
                                      Text(
                                        ' *',
                                        style: TextStyle(color: Colors.red),
                                      )
                                    ]),
                                    hintStyle: TextStyle(fontSize: 16),
                                    floatingLabelBehavior:
                                        FloatingLabelBehavior.auto,
                                    prefixIcon: Icon(Icons.abc_outlined)),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter your name';
                                  }
                                  return null;
                                },
                              ),
                              TextFormField(
                                controller: phoneNumber,
                                keyboardType: TextInputType.number,
                                maxLength: 25,
                                decoration: const InputDecoration(
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20))),
                                    hintText: "0868 372 282",
                                    hintStyle: TextStyle(fontSize: 16),
                                    label: Row(children: [
                                      Text('Phone Number'),
                                      Text(
                                        ' *',
                                        style: TextStyle(color: Colors.red),
                                      )
                                    ]),
                                    floatingLabelBehavior:
                                        FloatingLabelBehavior.auto,
                                    prefixIcon:
                                        Icon(Icons.phone_iphone_outlined)),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter you phone number';
                                  }
                                  return null;
                                },
                              ),
                              TextFormField(
                                controller: email,
                                keyboardType: TextInputType.emailAddress,
                                maxLength: 25,
                                decoration: const InputDecoration(
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20))),
                                    hintText: "hai.nguyen@gmail.com",
                                    hintStyle: TextStyle(fontSize: 16),
                                    label: Row(children: [
                                      Text('Email'),
                                      Text(
                                        ' *',
                                        style: TextStyle(color: Colors.red),
                                      )
                                    ]),
                                    floatingLabelBehavior:
                                        FloatingLabelBehavior.auto,
                                    prefixIcon: Icon(Icons.email_outlined)),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter your email';
                                  }
                                  return null;
                                },
                              ),
                            ]),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                              top: 10, left: 10, right: 10),
                          height: 60,
                          width: 360,
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Giới tính',
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                              Padding(
                                  padding: EdgeInsets.only(top: 15),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.radio_button_checked,
                                            color: Colors.blue,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(left: 10),
                                            child: Text(
                                              'Nam',
                                              style: TextStyle(fontSize: 16),
                                            ),
                                          )
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.radio_button_off_outlined,
                                            color: Colors.blue,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(left: 10),
                                            child: Text(
                                              'Nữ',
                                              style: TextStyle(fontSize: 16),
                                            ),
                                          )
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.radio_button_off_outlined,
                                            color: Colors.blue,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(left: 10),
                                            child: Text(
                                              'Khác',
                                              style: TextStyle(fontSize: 16),
                                            ),
                                          )
                                        ],
                                      ),
                                    ],
                                  ))
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                              top: 10, left: 10, right: 10),
                          height: 55,
                          width: 360,
                          decoration: const BoxDecoration(
                              border: Border(bottom: BorderSide(width: 0.2))),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Ngày sinh',
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text(
                                      '20/11/2000',
                                      style: TextStyle(
                                        fontSize: 16,
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {
                                        _showCalendar();
                                      },
                                      child: const Icon(
                                        Icons.calendar_month_outlined,
                                        color: Colors.blue,
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                              top: 10, left: 10, right: 10),
                          height: 70,
                          width: 360,
                          decoration: const BoxDecoration(
                              border: Border(bottom: BorderSide(width: 0.2))),
                          child: Form(
                            child: TextFormField(
                              keyboardType: TextInputType.visiblePassword,
                              maxLength: 25,
                              decoration: const InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(20))),
                                  hintText: "13 đường 37, KĐT Vạn Phúc",
                                  hintStyle: TextStyle(fontSize: 16),
                                  label: Row(children: [
                                    Text('Địa chỉ'),
                                    Text(
                                      ' *',
                                      style: TextStyle(color: Colors.red),
                                    )
                                  ]),
                                  floatingLabelBehavior:
                                      FloatingLabelBehavior.auto,
                                  prefixIcon: Icon(Icons.location_on_outlined)),
                            ),
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
                    child: file == null
                        ? Icon(
                            Icons.image,
                            size: 50,
                          )
                        : Image.file(
                            file!,
                            fit: BoxFit.fill,
                          )),
              ),
              Positioned(
                left: 70,
                right: 0,
                top: 80,
                child: Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      border: Border.all(width: 0.1)),
                  child: MaterialButton(
                    onPressed: () {
                      getgall();
                    },
                    child: const Icon(
                      Icons.photo_camera_outlined,
                      color: Colors.blueAccent,
                      size: 20,
                    ),
                  ),
                ),
              ),
              Container(
                  margin: const EdgeInsets.only(top: 10, left: 310),
                  child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        print(userName.text);
                        print(fullName.text);
                        print(phoneNumber.text);
                        print(email.text);
                      } else {
                        print("Not Validated");
                      }
                    },
                    child: const Text('Save'),
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
