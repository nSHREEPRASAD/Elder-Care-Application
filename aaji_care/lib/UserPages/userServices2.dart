import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class userServices2 extends StatelessWidget {
  const userServices2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Patient Care Centre"),
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
                    child: Image.network("https://aajicare.in/wp-content/uploads/elementor/thumbs/pt-care3-1-piplp6i7dxk0bbi9cy1uqnodmcr5t83aogzmv4z7aw.jpg"),
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Text(" What Challenges Do We ?",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
              Text(" Address?",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
              Row(
                children: [
                  SizedBox(width: 10,),
                  Padding(
                    padding: const EdgeInsets.only(top: 8,bottom: 8),
                    child: Container(
                      width: 300,
                      height: 400,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Through our patient care at home service, we address challenges families with the elderly & patients in metro cities who cannot find trained and trusted care givers for their loved ones at home. Patient care at home can be provided for",
                          style: TextStyle(fontSize: 16),
                          ),
                          SizedBox(height: 10,),
                          Text("* Alzheimer's and Dementia Care",
                          style: TextStyle(fontSize: 16),
                          ),
                          Text("* Support for Stroke, Parkinson,",
                          style: TextStyle(fontSize: 16),
                          ),
                          Text("   Paralysis Recovery",
                          style: TextStyle(fontSize: 16),
                          ),
                          Text("* Respite Care",
                          style: TextStyle(fontSize: 16),
                          ),
                          Text("* Palliative/end of life care",
                          style: TextStyle(fontSize: 16),
                          ),
                          Text("* Long term chronic diseases like",
                          style: TextStyle(fontSize: 16),
                          ),
                          Text("   diabetic",
                          style: TextStyle(fontSize: 16),
                          ),
                          Text("* Mobility issue",
                          style: TextStyle(fontSize: 16),
                          ),
                          Text("* Support for elderly staying alone",
                          style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Text(" What We Offer",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
              Row(
                children: [
                  SizedBox(width: 10,),
                  Padding(
                    padding: const EdgeInsets.only(top: 8,bottom: 8),
                    child: Container(
                      width: 300,
                      height: 150,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("We offer 12 and 24 hrs trained, trustworthy and compassionate Care Givers, Nursing assistants to take care of activities of daily living, and basic/advanced nursing care for patients and elders.",
                          style: TextStyle(fontSize: 16),
                          ),
                        ],
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
                    child: Lottie.asset("assets/animations/ElderCare2.json"),
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