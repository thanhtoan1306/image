import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "App name here",
      home: HomePage(),
    );
  }
}


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}


class _HomePageState extends State<HomePage> {
  File _image;

  _openGallary(BuildContext context)async {
    var image = await ImagePicker.pickImage(source: ImageSource.gallery);

    this.setState(() {
      _image = image;
    });
    Navigator.of(context).pop();


  }
  _openCamera(BuildContext context) async {
    var image = await ImagePicker.pickImage(source: ImageSource.camera);

    this.setState(() {
      _image = image;
    });
    Navigator.of(context).pop();

  }
  Future<void> _showChoiceDiaLog(BuildContext context) {
    return showDialog(context: context, builder: (BuildContext){
      return AlertDialog(
        title: Text('Gallary or Camera'),
        content: SingleChildScrollView(
          child: ListBody(

            children: <Widget>[
              GestureDetector(
                child: Text('Gallary'),
                onTap: () {
                  _openGallary(context);
                },
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
              ),
              GestureDetector(
                child: Text('Camera'),
                onTap: () {
                  _openCamera(context);
                },
              ),

            ],
          ),
        ),
      );


    });
  }
  Widget _decideImageView(){
    if(_image == null) {
      return Image.asset('assets/placeholder.png');
    }else{
      return Image.file(_image,width: 400,height: 400,);
      //print("anh da in");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Main Screen'),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Text('Image',style: TextStyle(fontWeight:FontWeight.bold,color:Colors.lightBlue),),

              _decideImageView(),
              FlatButton(
                onPressed: () {
                  _showChoiceDiaLog(context);
                },

                child: Text('Selected'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
