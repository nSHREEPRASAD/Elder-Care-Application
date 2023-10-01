import 'package:aaji_care/UserPages/userInquiryForm.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:url_launcher/url_launcher.dart';

class userContactUs extends StatefulWidget {
  const userContactUs({super.key});

  @override
  State<userContactUs> createState() => _userContactUsState();
}

class _userContactUsState extends State<userContactUs> {
  final Uri whatsapp =Uri.parse("https://wa.me/7506734116");
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,  
        title: Text("Contact Us"),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            SizedBox(height: 10,),
            Container(
              width: 300,
              height: 200,
              child: Lottie.asset("assets/animations/ContactUsAnimation.json"),
            ),
            SizedBox(height: 10,),
            Container(
              width: 330,
              height: 350,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Card(
                      elevation: 10,
                      child: Container(
                        width: 320,
                        height: 130,
                        child: Column(
                          children: [
                            Container(
                              width: 300,
                              height: 40,
                              child: Row(
                                children: [
                                  Icon(Icons.location_on),
                                  SizedBox(width: 5,),
                                  Text("Address :",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Aaji care Home Health services Pvt Ltd. 2nd floor, Anmol Mansion, Govind Bachaji Rd, Charai, Thane West, Maharashtra 400601"),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Card(
                      elevation: 10,
                      child: Container(
                        width: 320,
                        height: 120,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text("Help Line: +91 99200 18184"),
                                  SizedBox(width: 20,),
                                  ElevatedButton(
                                    onPressed: ()async{
                                      final Uri phone=Uri(
                                        scheme: "tel",
                                        path: "+91 99200 18184"
                                      );
                                      if(await canLaunchUrl(phone)){
                                        await launchUrl(phone);
                                      }
                                    }, 
                                    child: Row(
                                      children: [
                                        Icon(Icons.call),
                                        Text(" Call")
                                      ],
                                    )
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Text("Email: contact@aajicare.in"),
                                  SizedBox(width: 20,),
                                  ElevatedButton(
                                    onPressed: ()async{
                                      final Uri email=Uri(
                                        scheme: "mailto",
                                        path: "contact@aajicare.in"
                                      );
                                      if(await canLaunchUrl(email)){
                                        await launchUrl(email);
                                      }
                                    }, 
                                    child: Row(
                                      children: [
                                        Icon(Icons.mail),
                                        Text(" Mail")
                                      ],
                                    )
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Card(
                      elevation: 10,
                      child: Container(
                        width: 320,
                        height: 100,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.calendar_month),
                                  Text(" Working Hours :"),
                                  SizedBox(width: 20,),
                                ],
                              ),
                              SizedBox(height: 5,),
                              Row(
                                children: [
                                  Text("Mon-Fri: 9:00 AM - 7:00 PM"),
                                  SizedBox(width: 20,),
                                ],
                              ),
                              Row(
                                children: [
                                  Text("Sat-Sun: 9:00 AM - 5:30 PM"),
                                  SizedBox(width: 20,),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 30,),
                    Text("Aaji Care Centers Location Details",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                    CarouselSlider(
                      items: [
                        Card(
                          color: Colors.blue,
                          elevation: 10,
                          child: Container(
                            width: 250,
                            height: 200,
                            child: SingleChildScrollView(
                              child: Column(
                                children: [
                                  SizedBox(height: 10,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(Icons.location_on,color: Colors.white,),
                                      Text("Andheri-Versova",style: TextStyle(color: Colors.white,fontSize: 18),),
                                    ],
                                  ),
                                  SizedBox(height: 10,),
                                  Container(
                                    width: 200,
                                    height: 120,
                                    child: Column(
                                      children: [
                                        Text("Ground Floor, Sea Shell Apartment, Opposite Nana Nani Park, Versova,Andheri West, Mumbai, Maharashtra 400061",style: TextStyle(color: Colors.white),)
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Card(
                          color: Colors.blue,
                          elevation: 10,
                          child: Container(
                            width: 250,
                            height: 200,
                            child: SingleChildScrollView(
                              child: Column(
                                children: [
                                  SizedBox(height: 10,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(Icons.location_on,color: Colors.white,),
                                      Text("Andheri-Veera Desai",style: TextStyle(color: Colors.white,fontSize: 18),),
                                    ],
                                  ),
                                  SizedBox(height: 10,),
                                  Container(
                                    width: 200,
                                    height: 120,
                                    child: Column(
                                      children: [
                                        Text("First Floor, Sejal Building, Link Extension Road, Off Veera Desai Road, Andheri West, Mumbai, Maharashtra-400053",style: TextStyle(color: Colors.white),)
                                      ],
                                    ),
                                  )
                            
                                ],
                              ),
                            ),
                          ),
                        ),
                        Card(
                          color: Colors.blue,
                          elevation: 10,
                          child: Container(
                            width: 250,
                            height: 200,
                            child: SingleChildScrollView(
                              child: Column(
                                children: [
                                  SizedBox(height: 10,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(Icons.location_on,color: Colors.white,),
                                      Text("Aaji Care Centers Thane",style: TextStyle(color: Colors.white,fontSize: 18),)
                                    ],
                                  ),
                                  SizedBox(height: 10,),
                                  Container(
                                    width: 200,
                                    height: 120,
                                    child: Column(
                                      children: [
                                        Text("Behind Bhaindarpada bus stop, Opposite LODHA Splendora,Ghodbunder Rd, Thane West, Maharashtra 400607",style: TextStyle(color: Colors.white),)
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Card(
                          color: Colors.blue,
                          elevation: 10,
                          child: Container(
                            width: 250,
                            height: 200,
                            child: SingleChildScrollView(
                              child: Column(
                                children: [
                                  SizedBox(height: 10,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(Icons.location_on,color: Colors.white,),
                                      Text("Aaji Care Centers Pune",style: TextStyle(color: Colors.white,fontSize: 18),)
                                    ],
                                  ),
                                  SizedBox(height: 10,),
                                  Container(
                                    width: 200,
                                    height: 120,
                                    child: Column(
                                      children: [
                                        Text("101, Dhir Mansion, 209/11, Road No. 6, Palacimo Estate, Opp. Vascon Park, Kalyani Nagar, Pune - 411006",style: TextStyle(color: Colors.white),)
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        )
                      ], 
                      options: CarouselOptions(
                        autoPlay: true,
                        autoPlayInterval: Duration(seconds: 2),
                        enlargeCenterPage: true,
                        enableInfiniteScroll: true
                      )
                    ),
                    SizedBox(height: 30,),
                    InkWell(
                      child: Card(
                        elevation: 10,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 280,
                            height: 60,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text("Inquiry Form",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                                SizedBox(height: 5,),
                                Text("Click here to fill Inquiry Form",style: TextStyle(fontSize:15),),
                              ],
                            ),
                          ),
                        ),
                      ),
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>userInquiryForm()));
                      },
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}