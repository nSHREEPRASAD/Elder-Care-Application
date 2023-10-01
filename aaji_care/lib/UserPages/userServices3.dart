import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class userServices3 extends StatelessWidget {
  const userServices3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Elder Care Centre"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        automaticallyImplyLeading: false,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 320,
                    height: 200,
                    child: Image.network("https://media.licdn.com/dms/image/D4D22AQEjXnYv4L-CWg/feedshare-shrink_800/0/1688906879710?e=1694649600&v=beta&t=St7v1ED1kdSfCLTdpByX6_RANECOacIsyBlG71plFc8"),
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Text(" AAJI CARE ELDER BUDDY",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
              Row(
                children: [
                  SizedBox(width: 10,),
                  Padding(
                    padding: const EdgeInsets.only(top: 8,bottom: 8),
                    child: Container(
                      width: 300,
                      height: 280,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Elder Buddies are trusted, enthusiastic and passionate young individuals who visit the elderly at their homes and spend quality time with them to enhance their psychological well-being.",
                          style: TextStyle(fontSize: 16),
                          ),
                          SizedBox(height: 10,),
                          Text("* Elders Looking For Meaningful",
                          style: TextStyle(fontSize: 16),
                          ),
                          Text("   Engagement",
                          style: TextStyle(fontSize: 16),
                          ),
                          Text("* Elders Affected By Dementia,",
                          style: TextStyle(fontSize: 16),
                          ),
                          Text("   Alzheimer’s, Parkison’s Etc",
                          style: TextStyle(fontSize: 16),
                          ),
                          Text("* Elders Dealing With Loneliness,",
                          style: TextStyle(fontSize: 16),
                          ),
                          Text("   Depression, Anxiety, Stress",
                          style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Text(" What Does Elder Buddy Do?",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
              Row(
                children: [
                  SizedBox(width: 10,),
                  Padding(
                    padding: const EdgeInsets.only(top: 8,bottom: 8),
                    child: Container(
                      width: 300,
                      height: 300,
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("1. INTELLECTUAL COMPANIONSHIP",
                            style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
                            ),
                            Text("# Meaningful conversations",
                            style: TextStyle(fontSize: 16,),
                            ),
                            Text("# Assistance with hobbies and interests",
                            style: TextStyle(fontSize: 16,),
                            ),
                            SizedBox(height: 10,),
                            Text("2. DEMENTIA CARE AND MANAGEMENT",
                            style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
                            ),
                            Text("# Psychological Assessments",
                            style: TextStyle(fontSize: 16,),
                            ),
                            Text("# Customized Brain games & activities",
                            style: TextStyle(fontSize: 16,),
                            ),
                            Text("# Management of Psychological",
                            style: TextStyle(fontSize: 16,),
                            ),
                            Text("   symptoms",
                            style: TextStyle(fontSize: 16,),
                            ),
                            Text("# Coordination with Doctors & family",
                            style: TextStyle(fontSize: 16,),
                            ),
                            SizedBox(height: 10,),
                            Text("3. RECREATIONAL ACTIVITIES AND SOCIALIZATION",
                            style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
                            ),
                            Text("# Outing to Gardens, temples, shopping",
                            style: TextStyle(fontSize: 16,),
                            ),
                            Text("   mall etc",
                            style: TextStyle(fontSize: 16,),
                            ),
                            Text("# Assistance for Social gathering",
                            style: TextStyle(fontSize: 16,),
                            ),
                            Text("# Board games and activities",
                            style: TextStyle(fontSize: 16,),
                            ),
                            SizedBox(height: 10,),
                            Text("4. TECHNOLOGICAL ASSISTANCE",
                            style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
                            ),
                            Text("# Assistance for learning mobile apps",
                            style: TextStyle(fontSize: 16,),
                            ),
                            Text("   used for daily life",
                            style: TextStyle(fontSize: 16,),
                            ),
                            Text("# Assistance for Social media",
                            style: TextStyle(fontSize: 16,),
                            ),
                            SizedBox(height: 10,),
                            Text("5. COUNSELLING FOR ELDERS AND CARE GIVERS",
                            style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
                            ),
                            Text("# Counselling for family members &",
                            style: TextStyle(fontSize: 16,),
                            ),
                            Text("   Care Attendants",
                            style: TextStyle(fontSize: 16,),
                            ),
                            Text("# Assistance for Social media",
                            style: TextStyle(fontSize: 16,),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 300,
                    height: 200,
                    child: Lottie.asset("assets/animations/ElderCare.json"),
                  ),
                ]
              ),
              SizedBox(height: 20,),
              Text(" Key Highlights",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
              SizedBox(height: 10,),
              Row(
                children: [
                  SizedBox(width: 15,),
                  Container(
                    width: 300,
                    height: 80,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("* PERSONALISED CARE"),
                        Text("* SKILLED & TRAINED CAREGIVERS"),
                        Text("* PROCESS-DRIVEN CARE"),
                        Text("* DAILY EXERCISES & ACTIVITIES"),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Text(" Care Giver Responsbility",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
              SizedBox(height: 10,),
              Row(
                children: [
                  SizedBox(width: 15,),
                  Container(
                    width: 320,
                    height: 200,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("* PERSONAL CARE"),
                        Text("* TOILETING"),
                        Text("* MOBILITY"),
                        Text("* NUTRITION"),
                        Text("* SUPPORT SERVICES"),
                        Text("* ADVANCE CARE"),
                        Text("* EMERGENCY MANAGEMENT"),
                        Text("* MEDICATION / VITAL SIGNS")
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}