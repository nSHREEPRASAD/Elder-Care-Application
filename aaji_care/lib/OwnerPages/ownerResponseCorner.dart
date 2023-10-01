import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
// import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';
// import 'package:shared_preferences/shared_preferences.dart';

class ownerResponseCorner extends StatefulWidget {
  const ownerResponseCorner({super.key});

  @override
  State<ownerResponseCorner> createState() => _ownerResponseCornerState();
}

class _ownerResponseCornerState extends State<ownerResponseCorner> {
  Color buttColor=Colors.grey;
  final _key = GlobalKey<FormState>();
  TextEditingController _ResponseController = TextEditingController();
  // final FirebaseDatabase _rdb= FirebaseDatabase.instance;
  final _firestoreDb=FirebaseFirestore.instance.collection("Response");
  List<String>likes=[];
  Map<String,dynamic>userMap={};
  Map<String,dynamic>userLikeMap={};
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    final _auth= FirebaseAuth.instance;
    return Scaffold(
      appBar: AppBar(
        title: Text("Response Corner"),
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
                width: 320,
                height: 550,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black
                  )
                ),
                child: StreamBuilder(
                  stream: _firestoreDb.snapshots(),
                  builder: (context,AsyncSnapshot<QuerySnapshot>snapshot){
                    if(snapshot.hasData){
                      return ListView.builder(
                        itemCount: snapshot.data!.docs.length,
                        itemBuilder: (context,index){
                          return Card(
                            elevation: 5,
                            child: Container(
                              width: 300,
                              height: (snapshot.data!.docs[index]["Response"].length).toDouble()<30?
                                                130:
                                                (snapshot.data!.docs[index]["Response"].length).toDouble()>30
                                                && (snapshot.data!.docs[index]["Response"].length).toDouble()<60?
                                                150:
                                                (snapshot.data!.docs[index]["Response"].length).toDouble()>60
                                                && (snapshot.data!.docs[index]["Response"].length).toDouble()<90?
                                                170:
                                                (snapshot.data!.docs[index]["Response"].length).toDouble()>90
                                                && (snapshot.data!.docs[index]["Response"].length).toDouble()<120?
                                                190:210,
                              child: Row(
                                children: [
                                  Container(
                                    width: 60,
                                    height: 200,
                                    child: Column(
                                      children: [
                                        SizedBox(height: 10,),
                                        Container(
                                          width: 60,
                                          height: 60,
                                          child: CircleAvatar(child: Icon(Icons.person,size: 50,)),
                                        )
                                      ],
                                    ),
                                  ),
                                  SizedBox(width: 5,),
                                  Column(
                                    children: [
                                      SizedBox(height: 10,),
                                      Container(
                                        width: 240,
                                        height: (snapshot.data!.docs[index]["Response"].length).toDouble()<30?
                                                60:
                                                (snapshot.data!.docs[index]["Response"].length).toDouble()>30
                                                && (snapshot.data!.docs[index]["Response"].length).toDouble()<60?
                                                80:
                                                (snapshot.data!.docs[index]["Response"].length).toDouble()>60
                                                && (snapshot.data!.docs[index]["Response"].length).toDouble()<90?
                                                100:
                                                (snapshot.data!.docs[index]["Response"].length).toDouble()>90
                                                && (snapshot.data!.docs[index]["Response"].length).toDouble()<120?
                                                120:140,
                                        // color: Colors.amber,
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            SizedBox(height: 10,),
                                            Text(snapshot.data!.docs[index]["Email"]),
                                            SizedBox(height: 10,),
                                            Text(snapshot.data!.docs[index]["Response"]),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        width: 220,
                                        height: 50,
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.end,
                                          children: [
                                            Container(
                                              width: 80,
                                              height: 50,
                                              child: Row(
                                                children: [
                                                  IconButton(
                                                    onPressed: ()async{ 
                                                      await FirebaseFirestore.
                                                      instance.collection("Response").
                                                      get().then((value){
                                                        setState(() {
                                                          userMap=value.docs[index].data();
                                                        });
                                                      });
                                                      List<String>Likes=List.from(userMap["Likes"]??[]);
                                                      if(Likes.contains(_auth.currentUser!.uid.toString())){
                                                        Likes.remove(_auth.currentUser!.uid.toString());
                                                      }
                                                      else if(!Likes.contains(_auth.currentUser!.uid.toString())){
                                                        Likes.add(_auth.currentUser!.uid.toString());
                                                      }
                                                      // print(Likes);
                                                      await FirebaseFirestore.
                                                      instance.collection("Response").doc(snapshot.data!.docs[index]["ID"]).
                                                      update({
                                                        "Likes":Likes
                                                      });
                                                    }, 
                                                    icon: Icon(Icons.favorite,
                                                    color:snapshot.data!.docs[index]["Likes"].
                                                          contains(_auth.currentUser!.uid.toString())?Colors.red:Colors.grey
                                                    )),
                                                    Text(snapshot.data!.docs[index]["Likes"].length.toString())
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          );
                        }
                      );
                    }
                    else{
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                  }
                ), 
              ),
            ],
          ),
        ),
      ),
    );
  }
  
}