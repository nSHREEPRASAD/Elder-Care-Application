import 'package:aaji_care/AuthPages/signIn.dart';
import 'package:aaji_care/UserPages/userAajiCareActivity.dart';
import 'package:aaji_care/UserPages/userAboutFounder.dart';
import 'package:aaji_care/UserPages/userAboutUs.dart';
import 'package:aaji_care/UserPages/userContactUs.dart';
import 'package:aaji_care/UserPages/userInquiryForm.dart';
import 'package:aaji_care/UserPages/userInquiryReply.dart';
import 'package:aaji_care/UserPages/userResponseCorner.dart';
import 'package:aaji_care/UserPages/userServices.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class UserHome extends StatefulWidget {
  var Email;
  var Role;
  UserHome(
    this.Email,
    this.Role 
  );
  @override
  State<UserHome> createState() => _UserHomeState(Email,Role);
}

class _UserHomeState extends State<UserHome> {
  var Email;
  var Role;
  _UserHomeState(
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
        child: SingleChildScrollView(
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
                        Text("About Us",style: TextStyle(fontSize: 20),),
                      ],
                    ),
                  ),
                ),
                onTap: (){
                  Navigator.pop(context);
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>userAboutUs()));
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
                        Text("Services",style: TextStyle(fontSize: 20),),
                      ],
                    ),
                  ),
                ),
                onTap: (){
                  Navigator.pop(context);
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>userServices()));
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
                        Text("About Founder",style: TextStyle(fontSize: 20),),
                      ],
                    ),
                  ),
                ),
                onTap: (){
                  Navigator.pop(context);
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>userAboutFounder()));
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
                        Text("Response Corner",style: TextStyle(fontSize: 20),),
                      ],
                    ),
                  ),
                ),
                onTap: (){
                  Navigator.pop(context);
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>userResponseCorner()));
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
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>userAajiCareActivity()));
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
                        Text("Contact Us",style: TextStyle(fontSize: 20),),
                      ],
                    ),
                  ),
                ),
                onTap: (){
                  Navigator.pop(context);
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>userContactUs()));
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
                        Text("Inquiry Reply",style: TextStyle(fontSize: 20),),
                      ],
                    ),
                  ),
                ),
                onTap: (){
                  Navigator.pop(context);
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>userInquiryReply()));
                },
              ),
            ],
          ),
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            CarouselSlider(
              items: [
                Image.asset("assets/images/AajiCareImage1.jpg"),
                Image.asset("assets/images/AajiCareImage2.jpg"),
                Image.asset("assets/images/AajiCareImage3.jpg"),
                Image.asset("assets/images/AajiCareImage4.jpg"),
                Image.asset("assets/images/AajiCareImage5.jpg")
              ], 
              options: CarouselOptions(
                autoPlay: true,
                enableInfiniteScroll: true,
                enlargeCenterPage: true
              )
            ),
            SizedBox(height: 30,),
            Container(
              width: 300,
              height: 330,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Story Behind The Brand :-",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                    SizedBox(height: 10,),
                    // Text(
                    //   "Hello Everyone ! This is Elder Care Service home named as “Aaji Care”. Aaji Care Home Health Services Private Limited was invented on 15 Aug 2012.",
                    //   style: TextStyle(fontSize: 20),
                    // ),
                    // SizedBox(height: 30,),
                    // Text(
                    //   "Aaji Care is Mumbai's Most Trusted Elder Care Service provider and delivering care with smiles from 2012. We are on a mission “To empower seniors and caregivers to lead a happy and dignified life”. We are here to deliver long-term, innovative and meaningful solutions to geriatric care challenges faced by individuals and families in metro cities across India.",
                    //   style: TextStyle(fontSize: 20),
                    // ),
                    // SizedBox(height: 30,),
                    // Text(
                    //   "Our Specialities are at Elder Care, Geriatric Care, Dementia Care, Patient Care at Home, Senior Care at Home, Geriatric Care Clinic, Care Givers, and Palliative Care.",
                    //   style: TextStyle(fontSize: 20),
                    // )
                    Text(
                      "Our Founder & CEO, Prasad Bhide, faced dilemmas, guilt, distress, and hassles while managing post-operative care for his mother and grandmother while staying in the USA. So he left his high-paying IT job to start a social enterprise called Aaji Care in 2012. ",
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(height: 30,),
                    Text(
                      "His thought was to make sure other families do not have to face similar challenges like him and his family and improve the quality of care delivered to elders at home. Aaji Care provides two-fold impact; one is to empower elders through various services which will enhance the quality of life for elders and their families second is to create distinguished careers for caregivers dominated by women.",
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      width: 300,
                      height: 150,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Card(
                              elevation: 10,
                              child: Container(
                                width: 140,
                                height: 150,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Text("4.8/5",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),),
                                      SizedBox(height: 5,),
                                      Text("Brand With Highest Client Satisfaction Index - Google Rating",style: TextStyle(fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),)
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 5,),
                            Card(
                              elevation: 5,
                              child: Container(
                                width: 140,
                                height: 140,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: [
                                      Text("27000 +",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),),
                                        SizedBox(height: 10,),
                                        Text("Served more than 27000 Elders & Families",style: TextStyle(fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),)
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 5,),
                            Card(
                              elevation: 5,
                              child: Container(
                                width: 140,
                                height: 140,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: [
                                      Text("99 %",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),),
                                        SizedBox(height: 10,),
                                        Text("Consistency in Service delivery",style: TextStyle(fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),)
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 5,),
                            Card(
                              elevation: 5,
                              child: Container(
                                width: 140,
                                height: 140,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: [
                                      Text("100 %",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),),
                                        SizedBox(height: 10,),
                                        Text("Competent & certified Care givers",style: TextStyle(fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),)
                                    ],
                                  ),
                                ),
                              ),
                            )
                          ],
                        ), 
                      ),
                    ),
                    SizedBox(height: 30,),
                    Text("What Challenges We Address For The Families With Elders ?",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                    SizedBox(height: 20,),
                    Text("* Finding Trained & Trustworthy care giver at home",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                    SizedBox(height: 5,),
                    Text("* Alzheimer & Dementia Care",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                    SizedBox(height: 5,),
                    Text("* Post-Operative Care",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                    SizedBox(height: 5,),
                    Text("* Long Term Nursing Care",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                    SizedBox(height: 5,),
                    Text("* Loneliness, Depression & Anxiety",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                    SizedBox(height: 5,),
                    Text("* Palliative Care",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                    SizedBox(height: 5,),
                    Text("* Respite Care ( Short term Care)",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                    SizedBox(height: 5,),
                    Text("* Lack of Elder Friendly Infrastructure",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                    SizedBox(height: 5,),
                  ],
                ),
              )
            )
          ],
        ),
      ),
    );
  }
}