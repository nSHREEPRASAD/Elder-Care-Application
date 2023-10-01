import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ownerNewImagePost extends StatefulWidget {
  @override
  State<ownerNewImagePost> createState() => _ownerNewImagePostState();
}

class _ownerNewImagePostState extends State<ownerNewImagePost> {
  bool isPressed = false;
  TextEditingController _CaptionController =TextEditingController();
  File? Photo;
  String filePath="";
  String imgUrl="";
  List<String>Likes=[];
  List<String>Comments=[];
  final _firestore = FirebaseFirestore.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,  
        title: Text("Post an Image"),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 20,),
              InkWell(
                child: Stack(
                  children: [
                    Card(
                    elevation: 10,
                    child: Container(
                      width: 300,
                      height: 300,
                      child: Photo==null? Icon(Icons.image,size: 300,color: Colors.blueGrey,):Image.file(Photo!,width: 300,height: 300,fit: BoxFit.cover,)
                    ),
                  ),
                  Positioned(
                    top: 0,
                    right: 0,
                    child: IconButton(
                      onPressed: (){
                        setState(() {
                          Photo=null;
                          filePath="";
                        });
                      }, 
                      icon: Icon(Icons.cancel,size: 50,color: Colors.blueGrey,)
                    ),
                  )
                ]
                ),
                onTap: (){
                  showModalBottomSheet(
                    context: context, 
                    builder: (context){
                      return Container(
                        height: 100,
                        child: Row(
                          children: [
                            SizedBox(width: 50,),
                            Column(
                              children: [
                                IconButton(
                                  onPressed: ()async{
                                    Navigator.pop(context);
                                    setState(() {
                                      Photo=null;
                                      filePath="";
                                    });
                                    ImagePicker _imagePicker = ImagePicker();
                                    XFile? file = await _imagePicker.pickImage(source: ImageSource.camera);
                                    if(file!=null){
                                      setState(() {
                                        Photo=File(file.path);
                                        filePath=file.path;
                                      });
                                    }
                                  }, 
                                  icon: Icon(Icons.add_a_photo,size: 50,)
                                ),
                                Text("Camera")
                              ],
                            ),
                            SizedBox(width: 100,),
                            Column(
                              children: [
                                IconButton(
                                  onPressed: ()async{
                                    Navigator.pop(context);
                                    setState(() {
                                      Photo=null;
                                      filePath="";
                                    });
                                    ImagePicker _imagePicker = ImagePicker();
                                    XFile? file = await _imagePicker.pickImage(source: ImageSource.gallery);
                                    if(file!=null){
                                      setState(() {
                                        Photo=File(file.path);
                                        filePath=file.path;
                                      });
                                    }
                                  }, 
                                  icon: Icon(Icons.image,size: 50,)
                                ),
                                Text("Gallery")
                              ],
                            ),
                          ],
                        ),
                      );
                    }
                  );
                },
              ),
              SizedBox(height: 40,),
              Container(
                width: 300,
                child: Form(
                  child: TextFormField(
                    controller: _CaptionController,
                    decoration: InputDecoration(
                      hintText: "Write a Caption...",
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey
                        )
                      ),
                    ),
                  )
                ),
              )
              ,
              SizedBox(height: 50,),
              Row(
                children: [
                  SizedBox(width: 20,),
                  ElevatedButton(
                    onPressed: () async{
                      if(Photo==null){
                        return;
                      }
                      String filName=DateTime.now().millisecondsSinceEpoch.toString();
                      Reference refDir = FirebaseStorage.instance.ref();
                      Reference refRoot = refDir.child("Images");
                      Reference refImg = refRoot.child(filName);
                      setState(() {
                        isPressed=true;
                      });
                      Future.delayed(Duration(seconds: 8 ),(){
                        setState(() {
                          isPressed=false;
                        });
                      });
                      try{
                        await refImg.putFile(File(filePath));
                        imgUrl=await refImg.getDownloadURL();
                        String docId=DateTime.now().millisecondsSinceEpoch.toString();
                        _firestore.collection("Post").doc(docId).
                        set({
                          "ImgUrl":imgUrl.toString(),
                          "Caption":_CaptionController.text.toString(),
                          "Likes":Likes,
                          "Comments":Comments,
                          "Id": docId.toString()
                        }).then((value){
                          _CaptionController.clear();
                          setState(() {
                            Photo=null;
                            filePath="";
                          });
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text("Image Posted Successfully"),
                              backgroundColor: Colors.green,
                              duration: Duration(seconds: 2),
                            )
                          );
                        });
                      }
                      catch(e){
                        //error
                      }
                    }, 
                    child: Container(
                      width: 90,
                      height: 60,
                      child: isPressed==true?
                      Center(child: CircularProgressIndicator(),):
                      Row(
                        children: [
                          Text("Post",style: TextStyle(fontSize: 25),),
                          SizedBox(width: 10,),
                          Icon(Icons.send)
                        ],
                      ),
                    )
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