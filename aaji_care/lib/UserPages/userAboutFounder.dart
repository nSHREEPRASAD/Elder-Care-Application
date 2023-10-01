import 'package:flutter/material.dart';

class userAboutFounder extends StatelessWidget {
  const userAboutFounder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Prasad Bhide"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 10,),
              Container(
                width: 200,
                height: 200,
                child: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/PrasadBhide.jpg"),
                ),
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  SizedBox(width: 20,),
                  Text("Prasad Bhide",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                ],
              ),
              Row(
                children: [
                  SizedBox(width: 20,),
                  Text("Founder - CEO",style: TextStyle(fontSize: 15,color: Colors.grey),),
                ],
              ),
              SizedBox(height: 20,),
              Container(
                width: 320,
                height: 280,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("I am a social entrepreneur and I am passionate to bring positive difference in services for Elders by empowering them and their families. I started Mumbai's first professional Elder Care Services called as Aaji Care on 15th Aug 2012 with focus to improve quality of care delivered to elderly. I started Aaji Care because of my own personal experience of not getting quality & consistent post operative care at home for my mother and grandmother. I left my corporate job with TCS in 2017 to give 100% to Aaji Care.",
                      style:TextStyle(fontSize: 18),
                      ),
                      SizedBox(height: 20,),
                      Text("I feel quite excited now with growth of solutions, opportunities, integration of technology in Geriatric Care. I feel there is so much to do.",
                      style:TextStyle(fontSize: 18),
                      ),
                      SizedBox(height: 20,),
                      Text("I love Adventures, Running, Classical & fusion music & Tea.",
                      style:TextStyle(fontSize: 18),
                      ),
                      SizedBox(height: 20,),
                      Text("- Prasad Bhide",
                      style:TextStyle(fontSize: 18),
                      ),
                      Text("   Founder - CEO",
                      style:TextStyle(fontSize: 14),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 30,),
              Row(
                children: [
                  Text("   Experience :-",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),), 
                ],
              ),
              SizedBox(height: 10,),
              Card(
                elevation: 10,
                child: Container(
                  width: 320,
                  height: 250,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Icon(Icons.location_city),
                          SizedBox(width: 5,),
                          Text("Founder",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(width: 25,),
                          Text("OWL Lives · Full-time",style: TextStyle(fontSize: 16,),),
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(width: 25,),
                          Text("Aug 2022 - Present · 1 yr 1 mo",style: TextStyle(fontSize: 13,color: Colors.grey),),
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(width: 25,),
                          Text("Thane · On-site",style:TextStyle(fontSize: 13,color: Colors.grey), ),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          SizedBox(width: 25,),
                          Container(
                            width: 280,
                            height: 120,
                            child: SingleChildScrollView(
                              child: Column(
                                children: [
                                  Text("OWL stands for Older Wiser Livelier, we intend to make ageing process more engaging, meaningful and fun. O.W.L. team includes creative artists, psychologists, Elder Care Enthusiastic who interacted with several elders to understand their interests, comfort and convenience. We designed India's 1st Happiness Hamper for Elders based on inputs received from hundreds of elders."),
                                ],
                              ),
                            ),
                          ),
                        ],
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
                  height: 270,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Icon(Icons.location_city),
                          SizedBox(width: 5,),
                          Text("Founder & CEO",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(width: 25,),
                          Text("Aaji Care Home Health Services Pvt",style: TextStyle(fontSize: 16,),),
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(width: 25,),
                          Text("Ltd · Full-time",style: TextStyle(fontSize: 16,),),
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(width: 25,),
                          Text("Aug 2017 - Present · 6 yrs 1 mo",style: TextStyle(fontSize: 13,color: Colors.grey),),
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(width: 25,),
                          Text("Mumbai Area, India · On-site",style:TextStyle(fontSize: 13,color: Colors.grey), ),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          SizedBox(width: 25,),
                          Container(
                            width: 280,
                            height: 120,
                            child: SingleChildScrollView(
                              child: Column(
                                children: [
                                  Text("Aaji Care is leading & award winning Geriatric Care service provide. We provide Care, Comfort & Happiness to elderly suffering with medical, mental health or mobility issues."),
                                  SizedBox(height: 10,),
                                  Text("Aaji Care delivers Care, Comfort & Happiness through its 3 key services. First one is long term residential Care services at its Geriatric or Elder Care centers, second is we provide trained and compassionate care givers for Patient Care at Home and third and unique services is Geriatric Counselling or Companionship to elders staying along or facing any mental health issues."),
                                  SizedBox(height: 10,),
                                  Text("Skills: Leadership · Entrepreneurship · Problem Solving"),
                                ],
                              ),
                            ),
                          ),
                        ],
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
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Icon(Icons.work),
                          SizedBox(width: 5,),
                          Text("Project Manager",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(width: 25,),
                          Text("Tata Consultancy Services",style: TextStyle(fontSize: 16,),),
                        ],
                      ),
                     Row(
                        children: [
                          SizedBox(width: 25,),
                          Text("Nov 2003 - Aug 2017 · 13 yrs 10 mos",style: TextStyle(fontSize: 13,color: Colors.grey),),
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(width: 25,),
                          Text("Thane",style: TextStyle(fontSize: 13,color: Colors.grey),),
                        ],
                      ),
                    ]
                  )
                )
              ),
              SizedBox(height: 30,),
              Row(
                children: [
                  Text("   Education :-",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),), 
                ],
              ),
              SizedBox(height: 10,),
              Card(
                elevation: 10,
                child: Container(  
                  width: 320,
                  height: 100,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Icon(Icons.school),
                          SizedBox(width: 5,),
                          Text("Doctor Babasaheb Ambedkar",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                        ],
                      ),
                      Text("      Technological University",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                     Row(
                        children: [
                          SizedBox(width: 25,),
                          Text(" 1994 - 2000",style: TextStyle(fontSize: 13,color: Colors.grey),),
                        ],
                      ),
                    ]
                  )
                ),
              ),
              SizedBox(height: 10,),
              Card(
                elevation: 10,
                child: Container(
                  width: 320,
                  height: 90,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Icon(Icons.school),
                          SizedBox(width: 5,),
                          Text("GBV",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                        ],
                      ),
                     Row(
                        children: [
                          SizedBox(width: 25,),
                          Text(" HSC",style: TextStyle(fontSize: 13,color: Colors.grey),),
                        ],
                      ),
                     Row(
                        children: [
                          SizedBox(width: 25,),
                          Text(" 1994 - 2000",style: TextStyle(fontSize: 13,color: Colors.grey),),
                        ],
                      ),
                    ]
                  )
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}