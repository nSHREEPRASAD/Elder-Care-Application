import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class userInquiryForm extends StatefulWidget {
  const userInquiryForm({super.key});

  @override
  State<userInquiryForm> createState() => _userInquiryFormState();
}

class _userInquiryFormState extends State<userInquiryForm> {
  final _key1=GlobalKey<FormState>();
  final _key2=GlobalKey<FormState>();
  final _key3=GlobalKey<FormState>();
  final _key4=GlobalKey<FormState>();

  TextEditingController _NameController = TextEditingController();
  TextEditingController _EmailController = TextEditingController();
  TextEditingController _PhoneController = TextEditingController();
  TextEditingController _MessageController = TextEditingController();

  String defaultStr="Assisted Living Facility";
  @override
  Widget build(BuildContext context) {
    final _auth=FirebaseAuth.instance;
    return Scaffold(
      appBar: AppBar(
        title: Text("Inquiry Form"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: Container(
          width: 320,
          height: 560,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black,
              width: 2
            ),
            borderRadius: BorderRadius.circular(11)
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Form(
                    key: _key1,
                    child: TextFormField(
                      validator: (value) {
                        if(value!.isNotEmpty){
                          return null;
                        }
                        else{
                          return "Please Enter Name";
                        }
                      },
                      controller: _NameController,
                      decoration: InputDecoration(
                        hintText: "Name",
                        prefixIcon: Icon(Icons.person),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11),
                          borderSide: BorderSide(
                            color: Colors.grey,
                            width: 2,
                          )
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11),
                          borderSide: BorderSide(
                            color: Colors.black,
                            width: 2,
                          )
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11),
                          borderSide: BorderSide(
                            color: Colors.red,
                            width: 2,
                          )
                        ), 
                      ),
                    )
                  ),
                  SizedBox(height: 10,),
                  Form(
                    key: _key2,
                    child: TextFormField(
                      validator: (value) {
                        if(value!.isNotEmpty){
                          return null;
                        }
                        else{
                          return "Please Enter Email Address";
                        }
                      },
                      controller: _EmailController,
                      maxLength: 35,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        hintText: "Email Address",
                        prefixIcon: Icon(Icons.email),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11),
                          borderSide: BorderSide(
                            color: Colors.grey,
                            width: 2,
                          )
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11),
                          borderSide: BorderSide(
                            color: Colors.black,
                            width: 2,
                          )
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11),
                          borderSide: BorderSide(
                            color: Colors.red,
                            width: 2,
                          )
                        ), 
                      ), 
                    )
                  ),
                  SizedBox(height: 10,),
                  Form(
                    key: _key3,
                    child: TextFormField(
                      validator: (value) {
                        if(value!.isNotEmpty && value.length==10){
                          return null;
                        }
                        else if(value.isEmpty){
                          return "Please Enter Contact Number";
                        }
                        else if(value.length!=10){
                          return "Please Enter Valid Contact Number";
                        }
                      },
                      controller: _PhoneController,
                      keyboardType: TextInputType.phone,
                      maxLength: 10,
                      decoration: InputDecoration(
                        hintText: "Contact Number",
                        prefixIcon: Icon(Icons.phone),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11),
                          borderSide: BorderSide(
                            color: Colors.grey,
                            width: 2,
                          )
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11),
                          borderSide: BorderSide(
                            color: Colors.black,
                            width: 2,
                          )
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11),
                          borderSide: BorderSide(
                            color: Colors.red,
                            width: 2,
                          )
                        ), 
                      ),
                    )
                  ),
                  SizedBox(height: 10,),
                  Container(
                    width: 290,
                    height: 50,
                    // child: DropdownButton(
                    //   value: defVal ,
                    //   isExpanded: true,
                    //   items: [
                    //     DropdownMenuItem(
                    //       child: Text("Assisted Living Facility"),
                    //       value: "One",
                    //     ),
                    //     DropdownMenuItem(
                    //       child: Text("Patient Care At Home"),
                    //       value: "Bye",
                    //     ),
                    //     DropdownMenuItem(
                    //       child: Text("Geriatric Psychologist At Home"),
                    //       value: "Three",
                    //     ),
              
                    //   ], 
                    //   onChanged: (String? newval){
                    //     setState(() {
                    //       defVal=newval!;
                    //     });
                    //   }
                    // ),
                    child: DropdownButton(
                      value: defaultStr,
                      isExpanded: true,
                      items: const[
                        DropdownMenuItem(
                          child: Text("Assisted Living Facility"),
                          value: "Assisted Living Facility",
                        ),
                        DropdownMenuItem(
                          child: Text("Patient Care At Home"),
                          value: "Patient Care At Home",
                        ),
                        DropdownMenuItem(
                          child: Text("Geriatric Psychologist At Home"),
                          value: "Geriatric Psychologist At Home",
                        ),
                      ], 
                      onChanged: (String? newVal){
                        setState(() {
                          defaultStr=newVal!; 
                        });
                      }
                    ),
                  ),
                  SizedBox(height: 10,),
                  Form(
                    key: _key4,
                    child: TextFormField(
                      validator: (value) {
                        if(value!.isNotEmpty){
                          return null;
                        }
                        else{
                          return "Please Enter Message";
                        }
                      },
                      controller: _MessageController,
                      maxLines: 5,
                      maxLength: 300,
                      decoration: InputDecoration(
                        hintText: "Message",
                        prefixIcon: Icon(Icons.message),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11),
                          borderSide: BorderSide(
                            color: Colors.grey,
                            width: 2,
                          )
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11),
                          borderSide: BorderSide(
                            color: Colors.black,
                            width: 2,
                          )
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11),
                          borderSide: BorderSide(
                            color: Colors.red,
                            width: 2,
                          )
                        ), 
                      ),
                    )
                  ),
                  SizedBox(height: 0,),
                  ElevatedButton(onPressed:(){
                    if(!_key1.currentState!.validate() || !_key2.currentState!.validate() || !_key3.currentState!.validate()){
                      return;
                    }
                    else{
                      FirebaseFirestore.instance.collection("Inquiry").
                      doc(FirebaseAuth.instance.currentUser!.uid.toString()).
                      set({
                        "Name":_NameController.text.toString(),
                        "Email":_EmailController.text.toString(),
                        "Contact Number":_PhoneController.text.toString(),
                        "Service":defaultStr.toString(),
                        "Message":_MessageController.text.toString(),
                        "Id":_auth.currentUser!.uid.toString()
                      }).then((value){
                        _NameController.clear();
                        _EmailController.clear();
                        _PhoneController.clear();
                        _MessageController.clear();
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text("Inquiry Form Submitted"),
                            backgroundColor: Colors.green,
                            duration: Duration(seconds: 2),
                          )
                        );
                      });
                    }
                  }, 
                  child: Text("Submit Form"))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}