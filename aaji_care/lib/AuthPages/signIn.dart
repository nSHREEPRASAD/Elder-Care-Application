import 'package:aaji_care/AuthPages/authAnimation.dart';
import 'package:aaji_care/AuthPages/chooseRoles.dart';
import 'package:aaji_care/UserPages/userHome.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:lottie/lottie.dart';
class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool isLoading=false;
  bool _obscure=true;
  final key1=GlobalKey<FormState>();
  final key2=GlobalKey<FormState>();
  TextEditingController _EmailController = TextEditingController();
  TextEditingController _PasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final _firebase=FirebaseFirestore.instance;
    final _auth=FirebaseAuth.instance;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,  
        title: Text("Sign In"),
      ),
      body: isLoading==true? Center(child: CircularProgressIndicator(),):
      Container(
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 10,),
              Container(
                width: 200,
                height: 200,
                child: Lottie.asset("assets/animations/OldAgeCare.json"),
              ),
              SizedBox(height: 10,),
              Container(
                width: double.infinity,
                height: 370,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(" Welcome,",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                      Text(" Sign in to continue",style: TextStyle(fontSize: 20),),
                      SizedBox(height: 30,),
                      Row(
                        children: [
                          SizedBox(width: 5,),
                          Container(
                            width: 300,
                            child: Form(
                              key: key1,  
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
                          ),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          SizedBox(width: 5,),
                          Container(
                            width: 300,
                            child: Form(
                              key: key2,
                              child: TextFormField(
                                validator: (value) {
                                  if(value!.isNotEmpty){
                                    return null;
                                  }
                                  else{
                                    return "Please Enter Password";
                                  }
                                },
                                obscureText: _obscure,
                                controller: _PasswordController,
                                decoration: InputDecoration(
                                  hintText: "Password",
                                  prefixIcon: Icon(Icons.lock),
                                  suffixIcon: IconButton(
                                    onPressed: (){
                                      setState(() {
                                        _obscure=!_obscure;
                                      });
                                    }, 
                                    icon: _obscure==true?Icon(Icons.remove_red_eye):Icon(Icons.cancel)
                                  ),
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
                          ),
                        ],
                      ),
                      SizedBox(height: 20,),
                      Row(
                        children: [
                          SizedBox(width: 5,),
                          Text("New User ? Create an account "),
                          SizedBox(width: 5,),
                          TextButton(
                            onPressed: (){
                              setState(() {
                                isLoading=true;
                              });
                              Future.delayed(Duration(seconds: 1),(){
                                setState(() {
                                  isLoading=false;
                                });
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>ChooseRoles()));
                              });
                            }, 
                            child: Text("Sign Up")
                          )
                        ],
                      ),
                      SizedBox(height: 10,),
                      Container(
                        width: 300,
                        child: ElevatedButton(
                          onPressed: (){
                            if(!key1.currentState!.validate() || !key2.currentState!.validate()){
                              return;
                            }
                            else{
                              _auth.signInWithEmailAndPassword(
                              email: _EmailController.text.toString(), 
                              password: _PasswordController.text.toString()
                            ).then((value){
                              Map<String,dynamic>?userMap={};
                              _firebase.collection("Users").
                              doc(_auth.currentUser!.uid.toString()).
                              get().then((value){
                                setState(() {
                                  userMap=value.data();
                                });
                                if(userMap?["Role"]=="User"){
                                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>authAnimation(_auth.currentUser!.email, "User")));
                                }
                                else if(userMap?["Role"]=="Owner"){
                                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>authAnimation(_auth.currentUser!.email, "Owner")));
                                }
                              }).onError((error, stackTrace){
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text("Incorrect Email Address or Password"),
                                    backgroundColor: Colors.red,
                                    duration: Duration(seconds: 2),
                                  )
                                );
                              });
                            });
                            }
                          }, 
                          child: Text("Sign In")
                        )
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      )
    );
  }
}