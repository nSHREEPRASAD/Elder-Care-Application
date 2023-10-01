import 'package:aaji_care/OwnerPages/ownerHome.dart';
import 'package:aaji_care/UserPages/userHome.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class userInquiryReply extends StatefulWidget {

  @override
  State<userInquiryReply> createState() => _userInquiryReplyState();
}

class _userInquiryReplyState extends State<userInquiryReply> {
  Map<String,dynamic>userMap={};
  @override
  Widget build(BuildContext context) {
    final _auth = FirebaseAuth.instance;
    final _firestore = FirebaseFirestore.instance;

    _firestore.collection("InquiryReply").
    doc(_auth.currentUser!.uid.toString()).
    get().then((value) {
      if(value.exists){
        setState(() {
          userMap=value.data()!;
        });
      }
    });
    return Scaffold(
      appBar: AppBar(
        title: Text("Inquiry Reply"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        actions: [
          userMap.isNotEmpty?
          ElevatedButton(
            onPressed: () async {
              final Uri PhoneNo = Uri(
                path: "+91 75067 34116",
                scheme: "tel"
              );

              if(await(canLaunchUrl(PhoneNo))){
                await launchUrl(PhoneNo);
              }
            }, 
            child: Row(
              children: [
                Icon(Icons.call,),
                SizedBox(width: 5,),
                Text("Call")
              ],
            )
          ):
          ElevatedButton(
            onPressed: (){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>UserHome(_auth.currentUser!.email, "User")));
            }, 
            child: Text("Go Back")
            )
        ],
      ),
      body: userMap.isNotEmpty?
      Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            SizedBox(height: 20,),
            Container(
              width: 320,
              height: 550,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                  width: 2
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Card(
                      elevation: 5,
                      color: Colors.purple,
                      child: Container(
                        width: 300,
                        height: 110,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Reply",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                              Text("From: ${userMap["ownerEmail"]}",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),)
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("${userMap["Reply"]}",style: TextStyle(fontSize: 25),),
                    ),
                    ElevatedButton(
                      onPressed: (){
                        _firestore.collection("InquiryReply").
                        doc(_auth.currentUser!.uid.toString()).
                        delete().then((value){
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>OwnerHome(_auth.currentUser!.email, "User")));
                        });
                      }, 
                      child: Text("Okay, Go To Dashboard")
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ):
      Center(
        child: Text("No Reply."),
      )
    );
  }
}