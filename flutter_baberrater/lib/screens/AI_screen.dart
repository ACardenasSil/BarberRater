/*
This is flutter screen that ask for a picture.
It might or might not be useful later.
Currently it only runs on an android device or emolulator
*/

import 'package:flutter/material.dart';


import 'dart:convert';
import 'dart:io';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:image_picker/image_picker.dart';



class AI_screen extends StatefulWidget {
  const AI_screen({super.key});
  //const AI_screen({Key? key, required this.title}) : super(key: key);

  static const routeName = '/AI_Screen';

  //final String title;

  @override
  State<AI_screen> createState() => _AI_screenState();
  /*  
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
  */
}


class _AI_screenState extends State<AI_screen> {
  // Selected Image storing in a Variable
  File? _selectedImage;
  bool _uploaded = false;

  var face_shape;
  var image_file = '';

  Future<http.Response> uploadImage(File file, String link) async {
    ///MultiPart request
    String filename = file.path.split('/').last;
    var request = http.MultipartRequest(
      'POST',
      Uri.parse(link),
    );
    Map<String, String> headers = {"Content-type": "multipart/form-data"};
    request.files.add(
      http.MultipartFile(
        'image',
        file.readAsBytes().asStream(),
        file.lengthSync(),
        filename: filename,
      ),
    );
    request.headers.addAll(headers);
    print("request: " + request.toString());
    var res = await request.send();
    var response = await http.Response.fromStream(res);
    print("This is response:" + response.body);
    print("This is response: ${res.statusCode} ");
    print("This is response: ${res.statusCode} ");

    return response;
  }

  Future<void> _addImage() async {
    final image = await ImagePicker.platform.pickImage(
      source: ImageSource.gallery,
      imageQuality: 60,
    );
    if (image != null) {
      _selectedImage = File(image.path);
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(
        //title: Text(),
      //),
      body: Center(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                if (_selectedImage == null)
                  const Text(
                    'Please Select a Image',
                  )
                else
                  Column(
                    children: [
                      SizedBox(
                          width: MediaQuery.of(context).size.width * 0.8,
                          child: Image.file(File(_selectedImage!.path))),
                      TextButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Colors.blue)
                        ),
                          onPressed: () async {
                            final res = await uploadImage(
                                File(_selectedImage!.path), 
                                "https://calculon.cs.csubak.edu/alonso/image/");
                            debugPrint(res.body);
                            final val = jsonDecode(res.body);
                            face_shape = val['face_shape'];
                            image_file = val['file_name'];

                            //print(face_shape);
                            //print(path);
                            setState(() {_uploaded = true;});
                          },
                          child: const Text("Upload Image", style: TextStyle(color: Colors.white),)),
                      if(_uploaded)
                        Text(
                          "Your faceshape is: " + face_shape +". Recommended hairstyles:",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.black, fontSize: 25),
                        ),
                      if(_uploaded)
                        Image.asset("./assets/images/styles/male/" + image_file, height: 400, width: 400,)
                      
                    ],
                  ),
              ]),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _addImage,
        tooltip: 'Image',
        child: const Icon(Icons.add),
      ),
    );
  }
}
