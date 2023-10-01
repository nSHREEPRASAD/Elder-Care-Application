import 'package:aaji_care/UserPages/userAdvisoryBoardInfo1.dart';
import 'package:aaji_care/UserPages/userAdvisoryBoardInfo2.dart';
import 'package:aaji_care/UserPages/userAdvisoryBoardInfo3.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
class userAdvisoryBoard extends StatelessWidget {
  const userAdvisoryBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Advisory Board"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            SizedBox(height: 10,),
            InkWell(
              child: Card(
                color: Colors.blue,
                child: Container(
                  width: 300,
                  height: 100,
                  child: Row(
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        child: CircleAvatar(
                          backgroundImage: AssetImage("assets/images/PriyadarshiniKulkarni.jpg"),
                        ),
                      ),
                      SizedBox(width: 5,),
                      Container(
                        width: 170,
                        height: 100,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 10,),
                            Text("Dr. Priyadarshini Kulkarni",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15),),
                            SizedBox(height: 5,),
                            Text("Ex Medical Director of Cipla Palliative Care",style: TextStyle(color: Colors.white,fontSize: 12))
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>userAdvisoryBoardInfo1()));
              },
            ),
            SizedBox(height: 10,),
            InkWell(
              child: Card(
                color: Colors.blue,
                child: Container(
                  width: 300,
                  height: 100,
                  child: Row(
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        child: CircleAvatar(
                          backgroundImage: AssetImage("assets/images/ManishPanchal.jpg"),
                        ), 
                      ),
                      SizedBox(width: 5,),
                      Container(
                        width: 170,
                        height: 100,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 10,),
                            Text("Manish Panchal",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15),),
                            SizedBox(height: 5,),
                            Text("Board Member/Strategic Advisor/Author",style: TextStyle(color: Colors.white,fontSize: 12))
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>userAdvisoryBoardInfo2()));
              },
            ),
            SizedBox(height: 10,),
            InkWell(
              child: Card(
                color: Colors.blue,
                child: Container(
                  width: 300,
                  height: 100,
                  child: Row(
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        child: CircleAvatar(
                          backgroundImage: AssetImage("assets/images/MittalShah.jpg"),
                        ),
                      ),
                      SizedBox(width: 5,),
                      Container(
                        width: 170,
                        height: 100,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 10,),
                            Text("Mittal Shah",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15),),
                            SizedBox(height: 5,),
                            Text("Bestseller Author",style: TextStyle(color: Colors.white,fontSize: 12))
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>userAdvisoryBoardInfo3()));
              },
            ),
            SizedBox(height: 20,),
            Container(
              width: 300,
              height: 200,
              child: Lottie.asset("assets/animations/AdvisoryBoardAnimation.json"),
            )
          ]
        ),
      ),
    );
  }
}