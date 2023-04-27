import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart';

class addPost extends StatefulWidget {
  final Function addp;
  const addPost(this.addp, {super.key});
  static const routeName = '/signup_signin_Screen';

  @override
  State<addPost> createState() => _addPostState();
}

// ignore: camel_case_types
class _addPostState extends State<addPost> {
  File? _image;
  final _descriptioncontroller = TextEditingController();

  Future getImage(ImageSource source) async {
    try {
      final image = await ImagePicker().pickImage(source: source);
      if (image == null) return print('failed');

      final imageTemporaty = File(image.path);
      //final imagePermanent = await saveFilePermenently(image.path);

      setState(() {
        _image = imageTemporaty;
      });
    } on PlatformException catch (e) {
      print('Failed to pick image');
    }
  }

  Future<File> saveFilePermenently(String imagePath) async {
    final directory = await getApplicationDocumentsDirectory();
    final name = basename(imagePath);
    final image = File('&{directory.path}/$name');

    return File(imagePath).copy(image.path);
  }

  void _submit(BuildContext context) {
    final description = _descriptioncontroller.text;
    widget.addp(
      _image,
      description,
    );
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            _image != null
                ? Image.file(
                    _image!,
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  )
                : Image.network(
                    'https://picsum.photos/250?image=9',
                    height: 100,
                    width: 100,
                  ),
            CustomButton(
              title: 'Pick from Gallery',
              icon: Icons.image_outlined,
              onClick: () => getImage(ImageSource.gallery),
            ),
            CustomButton(
              title: 'Pick from Camera',
              icon: Icons.camera,
              onClick: () => getImage(ImageSource.camera),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: TextFormField(
                controller: _descriptioncontroller,
                maxLength: 100,
                maxLines: 3,
                decoration: InputDecoration(
                  hintText: "Image Description",
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                _submit(context);
              },
              child: Text('POST'),
            ),
          ],
        ),
      ),
    );
  }
}

Widget CustomButton({
  required String title,
  required IconData icon,
  required VoidCallback onClick,
}) {
  return Container(
    width: 250,
    child: ElevatedButton(
      onPressed: onClick,
      child: Row(
        children: [
          Icon(icon),
          SizedBox(
            width: 20,
          ),
          Text(title),
        ],
      ),
    ),
  );
}
