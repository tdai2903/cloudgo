import 'package:carousel_pro_nullsafety/carousel_pro_nullsafety.dart';
import 'package:flutter/material.dart';
import 'package:task_w2/list_screen/list_screen.dart';
import 'package:task_w2/menu_account_screen/menu_account_screen.dart';
import 'package:task_w2/new_lead_screen/new_lead_screen.dart';
import 'package:task_w2/profile_screen/profile_screen.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({super.key});

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  final PageStorageBucket bucket = PageStorageBucket();

  void _showCalendar() {
    showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2023),
        lastDate: DateTime(2024));
  }

  List nameScreen = [
    NewLeadScreen(),
  ];
  List catNames = [
    "Lead",
    'Người liên hệ',
    'Công ty',
    'Cơ hội',
    'Báo giá',
    'Đơn hàng',
    'Cuộc gọi',
    'Cuộc họp',
    'Công việc',
  ];
  List<Color> catColors = [
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
  ];
  List<Icon> catIcons = [
    const Icon(
      Icons.person_2_outlined,
      color: Colors.blue,
      size: 30,
    ),
    const Icon(
      Icons.account_box_outlined,
      color: Colors.blue,
      size: 30,
    ),
    const Icon(
      Icons.account_balance_outlined,
      color: Colors.blue,
      size: 30,
    ),
    const Icon(
      Icons.add_alert_outlined,
      color: Colors.blue,
      size: 30,
    ),
    const Icon(
      Icons.note_alt_outlined,
      color: Colors.blue,
      size: 30,
    ),
    const Icon(
      Icons.note_add_outlined,
      color: Colors.blue,
      size: 30,
    ),
    const Icon(
      Icons.phone_outlined,
      color: Colors.blue,
      size: 30,
    ),
    const Icon(
      Icons.groups_2_outlined,
      color: Colors.blue,
      size: 30,
    ),
    const Icon(
      Icons.workspaces_outline,
      color: Colors.blue,
      size: 30,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final maxWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: PageStorage(
        bucket: bucket,
        child: ListView(
          children: [
            Stack(
              children: [
                Container(
                  height: 250,
                  color: Colors.white,
                  child: Stack(
                    children: [
                      Container(
                        height: 150,
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 27, 115, 230),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(50),
                            bottomRight: Radius.circular(50),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        right: 0,
                        top: 80,
                        child: Container(
                            margin: const EdgeInsets.only(left: 10, right: 10),
                            height: 160,
                            width: maxWidth,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(width: 0.1)),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Carousel(
                                  dotSize: 3,
                                  dotSpacing: 10,
                                  radius: const Radius.circular(20),
                                  dotColor: Colors.blueAccent,
                                  dotPosition: DotPosition.bottomCenter,
                                  indicatorBgPadding: 1,
                                  images: [
                                    Image.asset(
                                      'lib/assets/images/brg1.png',
                                      fit: BoxFit.fill,
                                    ),
                                    Image.asset(
                                      'lib/assets/images/brg2.png',
                                      fit: BoxFit.fill,
                                    ),
                                    Image.asset(
                                      'lib/assets/images/brg3.png',
                                      fit: BoxFit.fill,
                                    ),
                                  ]),
                            )),
                      ),
                      Positioned(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(left: 15, top: 20),
                              child: const Text(
                                '<',
                                style: TextStyle(
                                    fontSize: 28,
                                    color: Color.fromARGB(255, 211, 244, 243)),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(
                                top: 20,
                              ),
                              width: 300,
                              height: 40,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 127, 192, 246),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: TextFormField(
                                decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Search here...",
                                  hintStyle: TextStyle(
                                    color: Colors.white,
                                  ),
                                  prefixIcon: Icon(
                                    Icons.search,
                                    color: Colors.white,
                                    size: 25,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(
                                right: 10,
                                top: 20,
                              ),
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: ((context) =>
                                              MeunuAccountScreen())));
                                },
                                child: const Icon(
                                  Icons.account_circle_outlined,
                                  color: Color.fromARGB(255, 211, 244, 243),
                                  size: 35,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              color: Colors.white,
              height: 40,
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Tổng quan',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  Row(children: [
                    Icon(
                      Icons.today,
                      color: Colors.blueAccent,
                    ),
                    Padding(padding: EdgeInsets.only(right: 5)),
                    Text(
                      'Hôm nay',
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.blueAccent,
                          fontWeight: FontWeight.w500),
                    ),
                  ]),
                ],
              ),
            ),
            Container(
              height: 370,
              width: maxWidth,
              margin: const EdgeInsets.only(left: 10, right: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  border: Border.all(width: 0.2)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 10, left: 20),
                    child: const Text(
                      'Hoạt động',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        margin: const EdgeInsets.only(top: 10, left: 20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color.fromARGB(255, 186, 125, 240),
                          border: Border.all(width: 0.2),
                        ),
                        width: 160,
                        height: 150,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(
                                top: 10,
                              ),
                              height: 50,
                              width: 50,
                              decoration: const BoxDecoration(
                                  color: Colors.white, shape: BoxShape.circle),
                              child: const Icon(
                                Icons.person,
                                color: Colors.purple,
                                size: 30,
                              ),
                            ),
                            const Padding(
                                padding: EdgeInsets.only(
                              top: 5,
                            )),
                            const Text(
                              'Lead mới',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16),
                            ),
                            const Padding(
                                padding: EdgeInsets.only(
                              top: 5,
                            )),
                            const Text(
                              '255',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 20),
                            ),
                            Row(
                              children: [
                                const Text(
                                  'Kỳ trước: 195',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(left: 5),
                                  height: 25,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: const Color.fromARGB(
                                          255, 207, 226, 243)),
                                  child: const Row(
                                    children: [
                                      Icon(
                                        Icons.arrow_circle_up_outlined,
                                        color: Colors.purple,
                                      ),
                                      Text(
                                        '55%',
                                        style: TextStyle(
                                            fontSize: 12, color: Colors.purple),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color.fromARGB(255, 92, 191, 236),
                            border: Border.all(width: 0.2)),
                        margin: const EdgeInsets.only(top: 10, right: 20),
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        width: 160,
                        height: 150,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(
                                top: 10,
                              ),
                              height: 50,
                              width: 50,
                              decoration: const BoxDecoration(
                                  color: Colors.white, shape: BoxShape.circle),
                              child: const Icon(
                                Icons.phone_in_talk,
                                color: Colors.blue,
                                size: 30,
                              ),
                            ),
                            const Padding(
                                padding: EdgeInsets.only(
                              top: 5,
                            )),
                            const Text(
                              'Cuộc gọi',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16),
                            ),
                            const Padding(
                                padding: EdgeInsets.only(
                              top: 5,
                            )),
                            const Text(
                              '255',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 20),
                            ),
                            Row(
                              children: [
                                const Text(
                                  'Kỳ trước: 195',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(left: 5),
                                  height: 25,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: const Color.fromARGB(
                                          255, 204, 225, 243)),
                                  child: const Row(
                                    children: [
                                      Icon(
                                        Icons.arrow_circle_up_outlined,
                                        color: Colors.blue,
                                      ),
                                      Text(
                                        '55%',
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.blue,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        margin: const EdgeInsets.only(top: 10, left: 20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color.fromARGB(255, 70, 203, 168),
                          border: Border.all(width: 0.2),
                        ),
                        width: 160,
                        height: 150,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(
                                top: 10,
                              ),
                              height: 50,
                              width: 50,
                              decoration: const BoxDecoration(
                                  color: Colors.white, shape: BoxShape.circle),
                              child: const Icon(
                                Icons.work_outline,
                                color: Colors.green,
                                size: 30,
                              ),
                            ),
                            const Padding(
                                padding: EdgeInsets.only(
                              top: 5,
                            )),
                            const Text(
                              'Công việc',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16),
                            ),
                            const Padding(
                                padding: EdgeInsets.only(
                              top: 5,
                            )),
                            const Text(
                              '255',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 20),
                            ),
                            Row(
                              children: [
                                const Text(
                                  'Kỳ trước: 195',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(left: 5),
                                  height: 25,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: const Color.fromARGB(
                                          255, 207, 226, 243)),
                                  child: const Row(
                                    children: [
                                      Icon(
                                        Icons.arrow_circle_up_outlined,
                                        color: Colors.green,
                                      ),
                                      Text(
                                        '55%',
                                        style: TextStyle(
                                            fontSize: 12, color: Colors.green),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color.fromARGB(255, 235, 109, 138),
                            border: Border.all(width: 0.2)),
                        margin: const EdgeInsets.only(top: 10, right: 20),
                        padding:
                            const EdgeInsets.symmetric(horizontal: 10), //note
                        width: 160,
                        height: 150,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(
                                top: 10,
                              ),
                              height: 50,
                              width: 50,
                              decoration: const BoxDecoration(
                                  color: Colors.white, shape: BoxShape.circle),
                              child: const Icon(
                                Icons.groups_2_outlined,
                                color: Colors.red,
                                size: 30,
                              ),
                            ),
                            const Padding(
                                padding: EdgeInsets.only(
                              top: 5,
                            )),
                            const Text(
                              'Cuộc họp',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16),
                            ),
                            const Padding(
                                padding: EdgeInsets.only(
                              top: 5,
                            )),
                            const Text(
                              '255',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 20),
                            ),
                            Row(
                              children: [
                                const Text(
                                  'Kỳ trước: 195',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(left: 5),
                                  height: 25,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: const Color.fromARGB(
                                          255, 207, 226, 243)),
                                  child: const Row(
                                    children: [
                                      Icon(
                                        Icons.arrow_circle_up_outlined,
                                        color: Colors.red,
                                      ),
                                      Text(
                                        '55%',
                                        style: TextStyle(
                                            fontSize: 12, color: Colors.red),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20),
              color: const Color.fromARGB(255, 245, 245, 245),
              child: const SizedBox(
                height: 10,
              ),
            ),
            Container(
              height: 300,
              width: maxWidth,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 40,
                    margin: const EdgeInsets.only(top: 10, left: 20, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Doanh thu theo tháng',
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w600),
                        ),
                        Container(
                          width: 150,
                          height: 25,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: const Color.fromARGB(255, 196, 229, 249)),
                          child: const Row(
                            children: [
                              Icon(
                                Icons.date_range_outlined,
                                color: Color.fromARGB(255, 100, 180, 246),
                                size: 20,
                              ),
                              Text(
                                '01/2023 -',
                                style: TextStyle(color: Colors.blue),
                              ),
                              Text(
                                ' 12/2023',
                                style: TextStyle(color: Colors.blue),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                      margin: const EdgeInsets.only(left: 20, bottom: 5),
                      child: const Text('(Đơn vị: Triệu)')),
                  Image.asset('lib/assets/images/chart.png')
                ],
              ),
            ),
            Container(
              color: const Color.fromARGB(255, 245, 245, 245),
              child: const SizedBox(
                height: 10,
              ),
            ),
            Container(
              height: 350,
              width: maxWidth,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 30,
                    width: 400,
                    decoration: const BoxDecoration(
                        border: Border(bottom: BorderSide(width: 0.2))),
                    margin: const EdgeInsets.only(
                      top: 20,
                    ),
                    child: const Text(
                      'Top Opportunity',
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                    ),
                    padding: const EdgeInsets.only(left: 20),
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(
                                top: 10, bottom: 10, left: 20, right: 5),
                            child: const Icon(
                              Icons.account_balance_outlined,
                              color: Colors.blue,
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(
                                top: 10, bottom: 10, left: 20, right: 5),
                            child: const Icon(
                              Icons.date_range_outlined,
                              color: Colors.grey,
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(
                                top: 10, bottom: 10, left: 20, right: 5),
                            child: const Icon(
                              Icons.attach_money,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Cơ hội bán hàng gói CloudPlus',
                            style: TextStyle(fontSize: 16),
                          ),
                          Padding(
                              padding: EdgeInsets.only(
                            bottom: 25,
                          )),
                          Text(
                            '20 - 11 - 2022',
                            style: TextStyle(
                                fontSize: 16,
                                color: Color.fromARGB(255, 107, 106, 106)),
                          ),
                          Padding(
                              padding: EdgeInsets.only(
                            bottom: 25,
                          )),
                          Text(
                            '500,000,000',
                            style: TextStyle(
                                fontSize: 16,
                                color: Color.fromARGB(255, 107, 106, 106)),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            padding: const EdgeInsets.only(bottom: 70),
                            child: const Icon(Icons.star_border),
                          ),
                          const Text(
                            'Phân tích nhu cầu',
                            style: TextStyle(color: Colors.green),
                          )
                        ],
                      )
                    ],
                  ),
                  Container(
                    decoration: const BoxDecoration(
                        border: Border(top: BorderSide(width: 0.2))),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(
                                  top: 10, bottom: 10, left: 20, right: 5),
                              child: const Icon(
                                Icons.account_balance_outlined,
                                color: Colors.blue,
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(
                                  top: 10, bottom: 10, left: 20, right: 5),
                              child: const Icon(
                                Icons.date_range_outlined,
                                color: Colors.grey,
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(
                                  top: 10, bottom: 10, left: 20, right: 5),
                              child: const Icon(
                                Icons.attach_money,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Cơ hội bán hàng gói CloudGO',
                              style: TextStyle(fontSize: 16),
                            ),
                            Padding(
                                padding: EdgeInsets.only(
                              bottom: 25,
                            )),
                            Text(
                              '20 - 11 - 2022',
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Color.fromARGB(255, 107, 106, 106)),
                            ),
                            Padding(
                                padding: EdgeInsets.only(
                              bottom: 25,
                            )),
                            Text(
                              '50,000,000',
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Color.fromARGB(255, 107, 106, 106)),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                              padding: const EdgeInsets.only(bottom: 70),
                              child: const Icon(Icons.star_border),
                            ),
                            const Text(
                              '       Đề xuất báo giá',
                              style: TextStyle(color: Colors.blue),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 350,
              width: maxWidth,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 30,
                    width: 400,
                    decoration: const BoxDecoration(
                        border: Border(bottom: BorderSide(width: 0.2))),
                    margin: const EdgeInsets.only(
                      top: 20,
                    ),
                    padding: const EdgeInsets.only(left: 20),
                    child: const Text(
                      'Hot Leads',
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => ProfileScreen())));
                    },
                    child: Container(
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Container(
                                margin: const EdgeInsets.only(
                                    top: 10, bottom: 10, left: 20, right: 5),
                                child: const Icon(
                                  Icons.person,
                                  color: Colors.blue,
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(
                                    top: 10, bottom: 10, left: 20, right: 5),
                                child: const Icon(
                                  Icons.phone_callback,
                                  color: Colors.grey,
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(
                                    top: 10, bottom: 10, left: 20, right: 5),
                                child: const Icon(
                                  Icons.email,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Nguyễn Đức Hải',
                                style: TextStyle(fontSize: 16),
                              ),
                              Padding(
                                  padding: EdgeInsets.only(
                                bottom: 25,
                              )),
                              Text(
                                '0796686044',
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Color.fromARGB(255, 107, 106, 106)),
                              ),
                              Padding(
                                  padding: EdgeInsets.only(
                                bottom: 25,
                              )),
                              Text(
                                'hai.nguyen@gmail.com',
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Color.fromARGB(255, 107, 106, 106)),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                padding: const EdgeInsets.only(bottom: 70),
                                child: const Icon(Icons.star_border),
                              ),
                              const Text(
                                '                     Đã chuyển đổi',
                                style: TextStyle(color: Colors.green),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                        border: Border(top: BorderSide(width: 0.2))),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(
                                  top: 10, bottom: 10, left: 20, right: 5),
                              child: const Icon(
                                Icons.person,
                                color: Colors.blue,
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(
                                  top: 10, bottom: 10, left: 20, right: 5),
                              child: const Icon(
                                Icons.phone_callback,
                                color: Colors.grey,
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(
                                  top: 10, bottom: 10, left: 20, right: 5),
                              child: const Icon(
                                Icons.email,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Nguyễn Đức Hải',
                              style: TextStyle(fontSize: 16),
                            ),
                            Padding(
                                padding: EdgeInsets.only(
                              bottom: 25,
                            )),
                            Text(
                              '0796686044',
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Color.fromARGB(255, 107, 106, 106)),
                            ),
                            Padding(
                                padding: EdgeInsets.only(
                              bottom: 25,
                            )),
                            Text(
                              'hai.nguyen@gmail.com',
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Color.fromARGB(255, 107, 106, 106)),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                              padding: const EdgeInsets.only(bottom: 70),
                              child: const Icon(Icons.star_border),
                            ),
                            const Text(
                              '                     Đã chuyển đổi',
                              style: TextStyle(color: Colors.green),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Container(
        child: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
                backgroundColor: Colors.transparent,
                context: context,
                builder: (BuildContext context) {
                  return Container(
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20))),
                    height: 500,
                    width: maxWidth,
                    child: Column(
                      children: [
                        Container(
                            margin: EdgeInsets.only(top: 10, bottom: 5),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.grey),
                            child: const SizedBox(
                              height: 5,
                              width: 70,
                            )),
                        const Text(
                          'Thêm mới',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w600),
                        ),
                        GridView.builder(
                            itemCount: catNames.length,
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 3),
                            itemBuilder: (context, index) {
                              return Column(
                                children: [
                                  InkWell(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: ((context) =>
                                                  nameScreen[index])));
                                    },
                                    child: Container(
                                      margin: const EdgeInsets.only(top: 20),
                                      height: 50,
                                      width: 50,
                                      decoration: BoxDecoration(
                                          color: catColors[index],
                                          border: Border.all(width: 0.2),
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      child: Center(child: catIcons[index]),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    catNames[index],
                                    style: const TextStyle(fontSize: 16),
                                  )
                                ],
                              );
                            })
                      ],
                    ),
                  );
                });
          },
          child: const Icon(
            Icons.add_shopping_cart_outlined,
            size: 30,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Color.fromARGB(255, 215, 232, 245),
        height: 80,
        shape: const CircularNotchedRectangle(),
        notchMargin: 10,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                InkWell(
                  onTap: () {},
                  child: const Icon(
                    Icons.home_outlined,
                    size: 40,
                    color: Colors.blueAccent,
                  ),
                ),
                const Text(
                  'HomeSALES',
                  style: TextStyle(fontWeight: FontWeight.w500),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  InkWell(
                    onTap: () {
                      _showCalendar();
                    },
                    child: const Icon(
                      Icons.date_range_outlined,
                      size: 30,
                      color: Colors.blueAccent,
                    ),
                  ),
                  const Text(
                    'Lịch',
                    style: TextStyle(fontWeight: FontWeight.w400),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ListScreen()));
                    },
                    child: const Icon(
                      Icons.list_alt_outlined,
                      size: 30,
                      color: Colors.blueAccent,
                    ),
                  ),
                  const Text('Danh sách',
                      style: TextStyle(fontWeight: FontWeight.w400))
                ],
              ),
            ),
            const Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Badge(
                  label: Text(
                    '99+',
                    style: TextStyle(color: Colors.white),
                  ),
                  child: Icon(
                    Icons.notifications_active_outlined,
                    size: 30,
                    color: Colors.blueAccent,
                  ),
                ),
                Text('Thông báo', style: TextStyle(fontWeight: FontWeight.w400))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
