import 'package:aaji_care/UserPages/userService1.dart';
import 'package:aaji_care/UserPages/userServices2.dart';
import 'package:aaji_care/UserPages/userServices3.dart';
import 'package:flutter/material.dart';

class userServices extends StatefulWidget {
  const userServices({super.key});

  @override
  State<userServices> createState() => _userServicesState();
}

class _userServicesState extends State<userServices> {
  int index=0;
  List<Widget> bodyScreen=[
    userServices1(),
    userServices2(),
    userServices3(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Services"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: bodyScreen[index],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (Newindex){
          setState(() {
            index=Newindex;
          });
        },
        selectedFontSize: 20,
        unselectedFontSize: 13,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.star,color: Colors.red,),
            label: "Geriatric"
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star,color: Colors.red,),
            label: "Patient Care"
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star,color: Colors.red,),
            label: "Elder Care"
          )
        ]
      ),
    );
  }
}