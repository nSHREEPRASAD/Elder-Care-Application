import 'package:aaji_care/AuthPages/signIn.dart';
import 'package:aaji_care/OwnerPages/ownerAajiCareActivity.dart';
import 'package:aaji_care/OwnerPages/ownerInquiryForms.dart';
import 'package:aaji_care/OwnerPages/ownerMakePost.dart';
import 'package:aaji_care/OwnerPages/ownerResponseCorner.dart';
import 'package:aaji_care/UserPages/userAajiCareActivity.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class OwnerHome extends StatefulWidget {
  var Email;
  var Role;
  OwnerHome(
    this.Email,
    this.Role 
  );
  @override
  State<OwnerHome> createState() => _OwnerHomeState(Email,Role);
}

class _OwnerHomeState extends State<OwnerHome> {
  var Email;
  var Role;
  _OwnerHomeState(
    this.Email,
    this.Role
  );
  final _auth=FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      drawer: Drawer(
        child: Column(
          children: [
            SizedBox(height: 50,),
            Card(
              elevation: 5,
              child: Container(
                height: 150,
                child: Row(
                  children: [
                    Container(
                      width: 120,
                      height: 150,
                      child: CircleAvatar(
                        child: Icon(Icons.person,size: 100,),
                      ),
                    ),
                    SizedBox(width: 5,),
                    Container(
                      width: 170,
                      height: 150,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 20,),
                          Text(Email),
                          SizedBox(height: 5,),
                          Text(Role),
                          SizedBox(height: 5,),
                          ElevatedButton(
                            onPressed: (){
                              _auth.signOut().then((value){
                                ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text("Account Signed Out",style: TextStyle(color: Colors.white),),
                                      backgroundColor: Colors.black,
                                      duration: Duration(seconds: 2),
                                    )
                                  );
                                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>SignIn()));
                              });
                            }, 
                            child: Text("Sign Out"))
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 10,),
            InkWell(
              child: Card(
                elevation: 5,
                child: Container(
                  height: 50,
                  child: Row(
                    children: [
                      SizedBox(width: 10,),
                      Text("Response Corner",style: TextStyle(fontSize: 20),),
                    ],
                  ),
                ),
              ),
              onTap: (){
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ownerResponseCorner()));
              },
            ),
            InkWell(
              child: Card(
                elevation: 5,
                child: Container(
                  height: 50,
                  child: Row(
                    children: [
                      SizedBox(width: 10,),
                      Text("Make a Post",style: TextStyle(fontSize: 20),),
                    ],
                  ),
                ),
              ),
              onTap: (){
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ownerMakePost()));
              },
            ),
            InkWell(
              child: Card(
                elevation: 5,
                child: Container(
                  height: 50,
                  child: Row(
                    children: [
                      SizedBox(width: 10,),
                      Text("Inquiry Forms",style: TextStyle(fontSize: 20),),
                    ],
                  ),
                ),
              ),
              onTap: (){
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context)=>OwnerInquiryForm()));
              },
            ),
            InkWell(
              child: Card(
                elevation: 5,
                child: Container(
                  height: 50,
                  child: Row(
                    children: [
                      SizedBox(width: 10,),
                      Text("Aaji Care Activity",style: TextStyle(fontSize: 20),),
                    ],
                  ),
                ),
              ),
              onTap: (){
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ownerAajiCareActivity()));
              },
            )
          ],
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20,),
            Row(
              children: [
                SizedBox(width: 40,),
                Container(
                  width: 300,
                  height: 200,
                  child: Lottie.asset("assets/animations/OwnerWelcomeAnimation.json"),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Text("Hello",style: TextStyle(fontSize: 100,fontStyle: FontStyle.italic,fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Text("Owner !",style: TextStyle(fontSize: 100,fontStyle: FontStyle.italic,fontWeight: FontWeight.bold),),
            ),
          ],
        ),
      )
    );
  }
}