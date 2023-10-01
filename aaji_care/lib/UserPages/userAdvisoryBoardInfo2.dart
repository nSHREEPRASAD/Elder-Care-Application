import 'package:flutter/material.dart';

class userAdvisoryBoardInfo2 extends StatelessWidget {
  const userAdvisoryBoardInfo2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Manish Panchal"),
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
                backgroundImage: AssetImage("assets/images/ManishPanchal.jpg"),
              ),
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                SizedBox(width: 20,),
                Text("Manish Panchal",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
              ],
            ),
            Row(
              children: [
                SizedBox(width: 20,),
                Text("Board Member/Strategic Advisor/Author",style: TextStyle(fontSize: 15,color: Colors.grey),),
              ],
            ),
            SizedBox(height: 20,),
            Container(
              width: 320,
              height: 280,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Text("Mr. Panchal is an Independent Director of IL&FS AMF. He was Senior Practice Head-Life Sciences & Healthcare at Tata Strategic Management Group. Mr. Panchal has over 27 years of professional experience and has worked with leading transnational healthcare companies like Abbott, J&J and B.Braun.",
                    style:TextStyle(fontSize: 18),
                    ),
                    SizedBox(height: 20,),
                    Text("Mr. Panchal has full business cycle work experience, which includes Sales & Marketing, Business Development, planning and executing corporate strategy, business and operational process improvement, and managing Indepedent P&L.",
                    style:TextStyle(fontSize: 18),
                    ),
                    SizedBox(height: 20,),
                    Text("Mr. Panchal is a recognized thought leader and has received several awards for his contribution to Industry & Academia. Mr. Panchal holds a Masters in Management from the Asian Institute of Management (AIM), Manila, Philippines.",
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