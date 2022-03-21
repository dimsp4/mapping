import 'package:flutter/material.dart';
import 'package:faker/faker.dart';

void main() {
  runApp(DataPribadi());
}

class DataPribadi extends StatelessWidget {
  Faker faker = Faker();
  late String name = faker.person.name();

  final List<Map<String, dynamic>> myList = [
    {
      "Name": "Dhimas",
      "Age": "17",
      "favColor": [
        "Purple",
        "Black",
        "Red",
        "Purple",
        "Black",
        "Purple",
        "Black",
        "Purple",
        "Black",
        "Purple",
        "Black",
      ]
    },
    {
      "Name": "Alum",
      "Age": "16",
      "favColor": [
        "Purple",
        "Black",
        "Red",
        "Purple",
        "Black",
        "Purple",
        "Black",
        "Purple",
        "Black",
        "Purple",
        "Black",
      ]
    },
    {
      "Name": "Alin",
      "Age": "3",
      "favColor": ["Purple", "Black", "Red"]
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Data Pribadi"),
        ),
        body: ListView(
          children: myList.map((data) {
            List myFavcolor = data['favColor'];
            return Card(
              child: Container(
                margin: EdgeInsets.all(5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(),
                        Container(
                          padding: EdgeInsets.only(left: 5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Name: ${data['Name']}"),
                              Text("Age: ${data['Age']}"),
                            ],
                          ),
                        )
                      ],
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                          children: myFavcolor.map((color) {
                        return Container(
                          color: Colors.purple,
                          margin:
                              EdgeInsets.symmetric(horizontal: 5, vertical: 15),
                          padding: EdgeInsets.symmetric(
                              horizontal: 10, vertical: 15),
                          child: Text(
                            color,
                            style: TextStyle(color: Colors.white),
                          ),
                        );
                      }).toList()),
                    )
                  ],
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
