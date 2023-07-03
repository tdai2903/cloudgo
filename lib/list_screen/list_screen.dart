import 'package:flutter/material.dart';
// import 'package:task_w2/home_page_screen/home_page_screen.dart';

class ListScreen extends StatefulWidget {
  const ListScreen({super.key});

  @override
  State<ListScreen> createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  void _showCalendar() {
    showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2023),
        lastDate: DateTime(2024));
  }

  final List<Items> listItems = <Items>[
    Items('Doan Xuan Hop', 'Công ty điện tử máy móc nhập...', 'Doan Quang Hai',
        'Moi', '17 - 09 - 2020'),
    Items('Nguyen Thanh Huong', 'Công ty THNN phân bón Bá...',
        'Nguyen Thi Thao', 'Contact in Future', '16 - 09 - 2020'),
    Items('Tran Dai', 'Công ty Hữu Việt', 'Nguyen Thao My', 'Junk Lead',
        '15 - 09 - 2020'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 241, 241, 241),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 100,
        actions: [
          Container(
            color: Colors.blue,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(
                    top: 10,
                  ),
                  child: Text(
                    'Danh sách',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.w700),
                  ),
                ),
                Container(
                  height: 40,
                  width: 350,
                  margin: const EdgeInsets.only(
                    top: 10,
                    right: 20,
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color.fromARGB(255, 179, 216, 247)),
                  child: TextFormField(
                    keyboardType: TextInputType.visiblePassword,
                    decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: "Tìm kiếm...",
                        hintStyle: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w500),
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.white,
                          size: 25,
                        )),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      body:
          // Container(
          //   height: 50,
          //   width: 400,
          //   padding: EdgeInsets.only(left: 20, right: 20),
          //   decoration: BoxDecoration(
          //       color: Colors.white,
          //       borderRadius: const BorderRadius.only(
          //         bottomLeft: Radius.circular(30),
          //         bottomRight: Radius.circular(30),
          //       ),
          //       border: Border.all(width: 0.2)),
          //   child: const Row(
          //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //     children: [
          //       Icon(
          //         Icons.menu_outlined,
          //         color: Colors.blue,
          //       ),
          //       Padding(
          //         padding: EdgeInsets.only(right: 220),
          //         child: Text(
          //           'LEAD',
          //           style: TextStyle(
          //               fontSize: 20,
          //               fontWeight: FontWeight.w600,
          //               color: Colors.blue),
          //         ),
          //       ),
          //       Icon(
          //         Icons.arrow_drop_down,
          //         size: 40,
          //         color: Colors.blue,
          //       )
          //     ],
          //   ),
          // ),
          ListView.builder(
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int index) {
          final item = listItems[index];
          return Container(
              decoration: BoxDecoration(
                  color: Colors.white, border: Border.all(width: 0.2)),
              padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        item.name,
                        style: const TextStyle(fontSize: 16),
                      ),
                      const Icon(
                        Icons.star_border_outlined,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Icon(Icons.account_balance_outlined),
                      Text(
                        item.nameCompany,
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                      Text(item.status)
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Icon(Icons.person_2_outlined),
                      Text(
                        item.userName,
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                      Text(
                        item.date,
                        style: TextStyle(color: Colors.grey[700]),
                      )
                    ],
                  )
                ],
              ));
        },
        itemCount: 3,
      ),
    );
  }
}

class Items {
  String name;
  String nameCompany;
  String userName;
  String status;
  String date;
  Items(this.name, this.nameCompany, this.userName, this.status, this.date);
}
