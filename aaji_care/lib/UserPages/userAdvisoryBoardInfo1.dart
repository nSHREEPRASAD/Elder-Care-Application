import 'package:flutter/material.dart';

class userAdvisoryBoardInfo1 extends StatelessWidget {
  const userAdvisoryBoardInfo1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dr. Priyadarshini Kulkarni"),
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
                backgroundImage: AssetImage("assets/images/PriyadarshiniKulkarni.jpg"),
              ),
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                SizedBox(width: 20,),
                Text("Dr. Priyadarshini Kulkarni",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
              ],
            ),
            Row(
              children: [
                SizedBox(width: 20,),
                Text("Ex Medical Director Of Cipla Palliative Care",style: TextStyle(fontSize: 15,color: Colors.grey),),
              ],
            ),
            SizedBox(height: 20,),
            Container(
              width: 320,
              height: 280,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Text("Dr. Priyadarshini Kulkarni is a Fellow of the National Cancer Centre in Singapore. An anesthetist by training, Dr. Kulkarni has been successful palliative care specialist for the past 19 years. She has completed a Graduate Certificate in Health (Palliative Medicine) from Flinders University, Adelaide, Australia. She also completed MSc in Palliative Medicine from Cardiff University, UK.",
                    style:TextStyle(fontSize: 18),
                    ),
                    SizedBox(height: 20,),
                    Text("The previous prestigious positions held by her are Medical Director of Cipla Palliative Care and Training Centre, Pune; National Secretary of the Indian Assosiation of Palliative Care.",
                    style:TextStyle(fontSize: 18),
                    ),
                    SizedBox(height: 20,),
                    Text("She has served as a board member of the Worldwide Hospice Palliative Care Alliance (WHPCA), and Asia Pacific Hospice Palliative Care Network (APHN).",
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