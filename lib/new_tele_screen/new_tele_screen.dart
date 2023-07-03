import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class NewTeleScreen extends StatefulWidget {
  const NewTeleScreen({super.key});

  @override
  State<NewTeleScreen> createState() => _NewTeleScreenState();
}

class _NewTeleScreenState extends State<NewTeleScreen> {
  var jsonList;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }

  void getData() async {
    try {
      var response = await Dio()
          .get('https://protocoderspoint.com/jsondata/superheros.json');
      if (response.statusCode == 200) {
        setState(() {
          jsonList = response.data["superheros"] as List;
        });
      } else {
        print(response.statusCode);
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Cuộc gọi')),
        body: ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            return Card(
              child: ListTile(
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(80),
                  child: Image.network(
                    jsonList[index]['url'],
                    fit: BoxFit.fill,
                    width: 50,
                    height: 50,
                  ),
                ),
                title: Text(jsonList[index]['name']),
                subtitle: Text(jsonList[index]['power']),
              ),
            );
          },
          itemCount: jsonList == null ? 0 : jsonList.length,
        ));
  }
}
