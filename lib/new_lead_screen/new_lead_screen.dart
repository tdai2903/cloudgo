import 'package:flutter/material.dart';

class NewLeadScreen extends StatefulWidget {
  const NewLeadScreen({super.key});

  @override
  State<NewLeadScreen> createState() => _NewLeadScreenState();
}

class _NewLeadScreenState extends State<NewLeadScreen> {
  String? valueChoose;
  static final List<String> listItem = <String>[
    'Chọn Giá...',
    '100,000,000',
    '200,000,000',
    '300,000,000',
  ];
  @override
  Widget build(BuildContext context) {
    final maxWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: ListView(children: [
        Column(
          children: [
            Container(
              height: 50,
              color: Colors.black,
            ),
            Container(
                height: 80,
                alignment: Alignment.center,
                width: maxWidth,
                decoration: const BoxDecoration(
                    border: Border(bottom: BorderSide(width: 0.3))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Icon(
                        Icons.arrow_back_ios,
                        size: 25,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 160, left: 100),
                      child: Text(
                        'Lead',
                        style: TextStyle(
                            fontSize: 26, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 38, left: 10),
                  padding: const EdgeInsets.only(left: 5),
                  height: 30,
                  width: 115,
                  decoration: BoxDecoration(
                      border: Border.all(width: 0.2),
                      borderRadius: BorderRadius.circular(3)),
                  child: const Row(
                    children: [
                      Text(
                        'Chọn giá...',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.black),
                      ),
                      Icon(
                        Icons.arrow_drop_down,
                        size: 30,
                        color: Colors.black,
                      )
                    ],
                  ),
                ),
                Container(
                  height: 50,
                  width: 130,
                  margin: const EdgeInsets.only(top: 30),
                  child: TextFormField(
                    keyboardType: TextInputType.visiblePassword,
                    decoration: const InputDecoration(
                        floatingLabelBehavior: FloatingLabelBehavior.auto,
                        isDense: true,
                        contentPadding: EdgeInsets.symmetric(vertical: 4),
                        label: Text(
                          'Họ và tên đệm',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.black),
                        ),
                        hintText: 'họ và tên đệm',
                        hintStyle: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey)),
                  ),
                ),
                Container(
                  height: 50,
                  width: 120,
                  margin: const EdgeInsets.only(top: 30, right: 10),
                  child: TextFormField(
                    keyboardType: TextInputType.visiblePassword,
                    decoration: const InputDecoration(
                        floatingLabelBehavior: FloatingLabelBehavior.auto,
                        isDense: true,
                        contentPadding: EdgeInsets.symmetric(vertical: 4),
                        label: Text(
                          'Tên',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.black),
                        ),
                        hintText: 'tên',
                        hintStyle: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey)),
                  ),
                ),
              ],
            ),
            Container(
              height: 50,
              margin: const EdgeInsets.only(top: 30, left: 10, right: 10),
              width: maxWidth,
              child: TextFormField(
                keyboardType: TextInputType.visiblePassword,
                decoration: const InputDecoration(
                    floatingLabelBehavior: FloatingLabelBehavior.auto,
                    isDense: true,
                    contentPadding: EdgeInsets.symmetric(vertical: 4),
                    label: Text(
                      'Công ty',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                    hintText: 'công ty',
                    hintStyle: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey)),
              ),
            ),
            Container(
              height: 50,
              margin: const EdgeInsets.only(top: 30, left: 10, right: 10),
              width: maxWidth,
              child: TextFormField(
                keyboardType: TextInputType.visiblePassword,
                decoration: const InputDecoration(
                    floatingLabelBehavior: FloatingLabelBehavior.auto,
                    isDense: true,
                    contentPadding: EdgeInsets.symmetric(vertical: 4),
                    label: Text(
                      'Tên thường gọi',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                    hintText: 'tên thường gọi',
                    hintStyle: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey)),
              ),
            ),
            Container(
              height: 50,
              margin: const EdgeInsets.only(top: 30, left: 10, right: 10),
              width: maxWidth,
              child: TextFormField(
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                    floatingLabelBehavior: FloatingLabelBehavior.auto,
                    isDense: true,
                    contentPadding: EdgeInsets.symmetric(vertical: 4),
                    label: Text(
                      'Điện thoại bàn',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                    hintText: 'điện thoại bàn',
                    hintStyle: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey)),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 10, left: 10, bottom: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Row(
                    children: [
                      Text(
                        'Nguồn',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.black),
                      ),
                      Text(
                        '*',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.red),
                      )
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10),
                    height: 30,
                    width: 115,
                    decoration: BoxDecoration(
                        border: Border.all(width: 0.2),
                        borderRadius: BorderRadius.circular(3)),
                    child: DropdownButton(
                      onChanged: (value) {},
                      items: listItem
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      value: listItem.first,
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 50,
              margin: const EdgeInsets.only(top: 20, left: 10, right: 10),
              width: maxWidth,
              child: TextFormField(
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                    floatingLabelBehavior: FloatingLabelBehavior.auto,
                    isDense: true,
                    contentPadding: EdgeInsets.symmetric(vertical: 4),
                    hintText: 'di động',
                    hintStyle: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey),
                    label: Row(
                      children: [
                        Text(
                          'Di động',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.black),
                        ),
                        Text(
                          '*',
                          style: TextStyle(color: Colors.red),
                        )
                      ],
                    )),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 10, left: 10, bottom: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Row(
                    children: [
                      Text(
                        'Nghành nghề',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.black),
                      ),
                      Text(
                        '*',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.red),
                      )
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10),
                    height: 30,
                    width: 115,
                    decoration: BoxDecoration(
                        border: Border.all(width: 0.2),
                        borderRadius: BorderRadius.circular(3)),
                    child: const Row(
                      children: [
                        Text(
                          'Chọn giá trị',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.black),
                        ),
                        Icon(
                          Icons.arrow_drop_down,
                          size: 30,
                          color: Colors.black,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 50,
              margin: const EdgeInsets.only(top: 20, left: 10, right: 10),
              width: maxWidth,
              child: TextFormField(
                keyboardType: TextInputType.visiblePassword,
                decoration: const InputDecoration(
                    floatingLabelBehavior: FloatingLabelBehavior.auto,
                    isDense: true,
                    contentPadding: EdgeInsets.symmetric(vertical: 4),
                    label: Text(
                      'Fax',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                    hintText: 'fax',
                    hintStyle: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey)),
              ),
            ),
            Container(
              height: 50,
              margin: const EdgeInsets.only(top: 30, left: 10, right: 10),
              width: maxWidth,
              child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                    floatingLabelBehavior: FloatingLabelBehavior.auto,
                    isDense: true,
                    contentPadding: EdgeInsets.symmetric(vertical: 4),
                    label: Text(
                      'Email',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                    hintText: 'email',
                    hintStyle: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey)),
              ),
            ),
            Container(
              height: 50,
              margin: const EdgeInsets.only(top: 30, left: 10, right: 10),
              width: maxWidth,
              child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                    floatingLabelBehavior: FloatingLabelBehavior.auto,
                    isDense: true,
                    contentPadding: EdgeInsets.symmetric(vertical: 4),
                    label: Text(
                      'Email khác',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                    hintText: 'email khác',
                    hintStyle: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey)),
              ),
            ),
            Container(
              height: 50,
              margin: const EdgeInsets.only(top: 30, left: 10, right: 10),
              width: maxWidth,
              child: TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    isDense: true,
                    contentPadding: const EdgeInsets.symmetric(vertical: 4),
                    label: Text(
                      'Doanh thu hàng năm',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey[700]),
                    ),
                    hintText: '0',
                    hintStyle: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey[700])),
              ),
            ),
            Container(
              height: 50,
              margin: const EdgeInsets.only(top: 30, left: 10, right: 10),
              width: maxWidth,
              child: TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    floatingLabelBehavior: FloatingLabelBehavior.auto,
                    isDense: true,
                    contentPadding: const EdgeInsets.symmetric(vertical: 4),
                    label: Text(
                      'Số lượng nhân viên',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey[700]),
                    ),
                    hintText: '0',
                    hintStyle: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey[700])),
              ),
            ),
            Container(
              height: 50,
              margin: const EdgeInsets.only(top: 30, left: 10, right: 10),
              width: maxWidth,
              child: TextFormField(
                keyboardType: TextInputType.visiblePassword,
                decoration: const InputDecoration(
                    floatingLabelBehavior: FloatingLabelBehavior.auto,
                    isDense: true,
                    contentPadding: EdgeInsets.symmetric(vertical: 4),
                    label: Text(
                      'Website',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                    hintText: 'website',
                    hintStyle: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey)),
              ),
            ),
            Container(
              width: maxWidth,
              padding: const EdgeInsets.only(top: 10, left: 10, bottom: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Tình trạng',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10),
                    height: 30,
                    width: 70,
                    decoration: BoxDecoration(
                        border: Border.all(width: 0.2),
                        borderRadius: BorderRadius.circular(3)),
                    child: const Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 5, right: 5),
                          child: Text(
                            'Mới',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                          ),
                        ),
                        Icon(
                          Icons.arrow_drop_down,
                          size: 30,
                          color: Colors.black,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: maxWidth,
              padding: const EdgeInsets.only(top: 10, left: 10, bottom: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Đánh giá',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10),
                    height: 30,
                    width: 125,
                    decoration: BoxDecoration(
                        border: Border.all(width: 0.2),
                        borderRadius: BorderRadius.circular(3)),
                    child: Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 5, right: 5),
                          child: Text(
                            'Chọn giá trị',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                          ),
                        ),
                        Icon(
                          Icons.arrow_drop_down,
                          size: 30,
                          color: Colors.grey[700],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            const Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Từ chối nhận email',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  Icon(
                    Icons.toggle_off_rounded,
                    size: 40,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: TextFormField(
                decoration: const InputDecoration(
                  isDense: true,
                  contentPadding: EdgeInsets.only(top: 50),
                  labelText: 'Vùng, Miền',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: TextFormField(
                decoration: const InputDecoration(
                  isDense: true,
                  contentPadding: EdgeInsets.only(top: 50),
                  labelText: 'Quận/Huyện',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: TextFormField(
                decoration: const InputDecoration(
                  isDense: true,
                  contentPadding: EdgeInsets.only(top: 50),
                  labelText: 'Tỉnh/TP',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: TextFormField(
                decoration: const InputDecoration(
                  isDense: true,
                  contentPadding: EdgeInsets.only(top: 50),
                  labelText: 'Mã vùng',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: TextFormField(
                decoration: const InputDecoration(
                  isDense: true,
                  contentPadding: EdgeInsets.only(top: 50),
                  labelText: 'Quốc gia',
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 10, right: 10),
              padding: const EdgeInsets.only(top: 20),
              height: 60,
              child: TextFormField(
                decoration: const InputDecoration(
                    isDense: true,
                    labelText: 'Mô tả',
                    labelStyle: TextStyle(
                        fontWeight: FontWeight.w600, color: Colors.black),
                    contentPadding: EdgeInsets.symmetric(vertical: 1)),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 10, top: 20),
              child: Column(children: [
                const Row(
                  children: [
                    Text(
                      'Giao cho',
                      style: TextStyle(fontSize: 16),
                    ),
                    Text(
                      '*',
                      style: TextStyle(color: Colors.red),
                    )
                  ],
                ),
                Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.only(
                        top: 10, left: 10, right: 20, bottom: 10),
                    height: 30,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 228, 240, 251),
                        borderRadius: BorderRadius.circular(5)),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10, right: 30),
                          child: Icon(
                            Icons.cancel_outlined,
                            color: Colors.teal[500],
                          ),
                        ),
                        Text(
                          'Adminstrator dung.vu@cloudgo.vn',
                          style:
                              TextStyle(fontSize: 16, color: Colors.teal[600]),
                        )
                      ],
                    )),
                TextFormField(
                  decoration: const InputDecoration(
                      floatingLabelBehavior: FloatingLabelBehavior.auto,
                      labelText: 'Vui lòng nhập ít nhất 2 ký tự!',
                      hintText: 'Vui lòng nhập ít nhất 2 ký tự!'),
                )
              ]),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: 20),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.red[100]),
                    height: 40,
                    width: 80,
                    child: const Text(
                      'Hủy',
                      style: TextStyle(
                          color: Colors.red,
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.blue),
                    height: 40,
                    width: 80,
                    child: const Text(
                      'Lưu',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ]),
    );
  }
}
