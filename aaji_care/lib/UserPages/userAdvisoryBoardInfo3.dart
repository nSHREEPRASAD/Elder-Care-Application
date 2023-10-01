import 'package:flutter/material.dart';

class userAdvisoryBoardInfo3 extends StatelessWidget {
  const userAdvisoryBoardInfo3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mittal Shah"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 10,),
            Container(
              width: 200,
              height: 200,
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/images/MittalShah.jpg"),
              ),
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                SizedBox(width: 20,),
                Text("Mittal Shah",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
              ],
            ),
            Row(
              children: [
                SizedBox(width: 20,),
                Text("Bestseller Author",style: TextStyle(fontSize: 15,color: Colors.grey),),
              ],
            ),
            SizedBox(height: 20,),
            Container(
              width: 320,
              height: 280,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Text("Mittal is an author of the bestseller, Idea to Unicorn: 7 Habits and behaviour of successful startup founder.",
                    style:TextStyle(fontSize: 18),
                    ),
                    SizedBox(height: 20,),
                    Text("Mittal has been associated with Aaji Care since Oct 2013 as an advisor. He has worked with various campanies including Accenture, Larsen & Toubro, TCS on challenging consulting assignments with fortune 500 clients in New York, London, Paris, Abu Dhabi and Bangkok.",
                    style:TextStyle(fontSize: 18),
                    ),
                    SizedBox(height: 20,),
                    Text("Mittal holds a Bchelor in Engineering and a Masters in Internationsl Finance. He currently lives in Mumbai.",
                    style:TextStyle(fontSize: 18),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}