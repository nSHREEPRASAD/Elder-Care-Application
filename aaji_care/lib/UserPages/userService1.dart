import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class userServices1 extends StatelessWidget {
  const userServices1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Geriatric Care Centre"),
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
                    child: Image.network("https://aajicare.in/wp-content/uploads/elementor/thumbs/aarambh--scaled-pl66is8ulctk9fkyzcavwdrczzz613mdjuu9xffcfs.jpg"),
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
                      width: 290,
                      height: 630,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("The assisted living facility is a residence for the elderly who require help with routines of daily living and access to medical care.",
                          style: TextStyle(fontSize: 16),
                          ),
                          SizedBox(height: 10,),
                          Text("* Dementia Care",
                          style: TextStyle(fontSize: 16),
                          ),
                          Text("* Chronic & advanced heart disease",
                          style: TextStyle(fontSize: 16),
                          ),
                          Text("* Alzheimer Care",
                          style: TextStyle(fontSize: 16),
                          ),
                          Text("* Stroke",
                          style: TextStyle(fontSize: 16),
                          ),
                          Text("* Parkinson Disease",
                          style: TextStyle(fontSize: 16),
                          ),
                          Text("* Post-Operative Care",
                          style: TextStyle(fontSize: 16),
                          ),
                          SizedBox(height: 10,),
                          Text("We are addressing challenges for families staying away from their parents or finding it difficult to manage them at home due to a lack of professional help and infrastructure to help elders deal with their medical conditions.",
                          style: TextStyle(fontSize: 16),
                          ),
                          SizedBox(height: 10,),
                          Text("We provide holistic Geriatric & Palliative Care with a team of Elder Care Specialist Dr, Physiotherapist, Psychologist, Nurses, and trained Caregivers. This team focuses on improving the quality of elders’ lives in maximal comfort and helping family members address their anxiety & care burnouts.",
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
                      width: 290,
                      height: 840,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Our Assisted living facilities (Elder Care Homes) offer long-term and short-term care for Geriatric, Palliative, and Post-Operative Care.",
                          style: TextStyle(fontSize: 16),
                          ),
                          SizedBox(height: 10,),
                          Text("We assist with their daily activities like bathing, dressing, grooming, toileting, medicine management, and around-the-clock nursing care. We also focus on their physical strength through yoga, physiotherapy sessions, and psychological wellbeing through activities and counseling sessions, along with a range of social movements and outings.",
                          style: TextStyle(fontSize: 16),
                          ),
                          SizedBox(height: 10,),
                          Text("We aim to have a less institutional, more communal feel than nursing homes in our facilities.",
                          style: TextStyle(fontSize: 16),
                          ),
                          SizedBox(height: 10,),
                          Text("Our centers also provide a specialized form of long-term care for seniors with Alzheimer’s disease and other forms of dementia. When seniors start experiencing Alzheimer’s or dementia symptoms, families realize that it’s in their loved one’s interest to seek out specialized assisted living facilities. Due to the signs accompanying memory loss, living at home without professional help can become unhealthy and unsafe for seniors. Our facilities are staffed by trained professionals to provide care to Alzheimer’s and dementia patients and are designed to accommodate older adults with progressive cognitive disorders.",
                          style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20,),
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
                    height: 200,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("* ELDER FRIENDLY INFRASTRUCTURE"),
                        Text("* 24/7 NURSING CARE"),
                        Text("* SAFE & HOMELY ENVIRONMENT"),
                        Text("* HEALTHY & CUSTOMISED MEALS"),
                        Text("* REGULAR DOCTOR VISITS"),
                        Text("* PHYSIOTHERAPY SESSIONS"),
                        Text("* ENGAGING SOCIAL ACTIVITIES"),
                        Text("* COUNSELING SUPPORT")
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Text(" Facilities we offer",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
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
                        Text("* AIR-CONDITIONED SUPERIOR ROOMS"),
                        Text("* COMMUNITY AREA FOR VARIOUS ACTIVITIES"),
                        Text("* GARDEN AREA"),
                        Text("* IN-HOUSE KITCHEN"),
                        Text("* CCTV MONITORING"),
                        Text("* ELECTRONIC SAFETY DOORS"),
                        Text("* TIE-UP WITH HOSPITALS"),
                        Text("* ELDER FRIENDLY INFRASTRUCTURE")
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