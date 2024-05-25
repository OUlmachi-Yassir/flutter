import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class CreatePost extends StatefulWidget {
  const CreatePost({Key? key}) : super(key: key);

  @override
  _CreatePostState createState() => _CreatePostState();
}

class _CreatePostState extends State<CreatePost> {
  late String _title;
  late String _category = ''; // Initialize with an empty string
  late String _subCategory = ''; // Initialize with an empty string
  File? _imageFile;

  final picker = ImagePicker();

  Future<void> _getImageFromGallery() async {
    final pickedFile = await picker.getImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        _imageFile = File(pickedFile.path);
      });
    }
  }

  Future<void> _takePicture() async {
    final pickedFile = await picker.getImage(source: ImageSource.camera);
    if (pickedFile != null) {
      setState(() {
        _imageFile = File(pickedFile.path);
      });
    }
  }

  void _selectCategory(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Select Category'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                title: Text('Mariage'),
                onTap: () {
                  setState(() {
                    _category = 'Mariage';
                  });
                  Navigator.pop(context);
                  _selectSubCategory(context);
                },
              ),
              ListTile(
                title: Text('Fête de Naissance'),
                onTap: () {
                  setState(() {
                    _category = 'Fête de Naissance';
                  });
                  Navigator.pop(context);
                  _selectSubCategory(context);
                },
              ),
              ListTile(
                title: Text('Baby Shower'),
                onTap: () {
                  setState(() {
                    _category = 'Baby Shower';
                  });
                  Navigator.pop(context);
                  _selectSubCategory(context);
                },
              ),
            ],
          ),
        );
      },
    );
  }

  void _selectSubCategory(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Select Subcategory'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Add subcategory options based on selected category
              if (_category == 'Mariage') ...{
                ListTile(
                  title: Text('Traiteur'),
                  onTap: () {
                    setState(() {
                      _subCategory = 'Traiteur';
                    });
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: Text('Salle de réception'),
                  onTap: () {
                    setState(() {
                      _subCategory = 'Salle de réception';
                    });
                    Navigator.pop(context);
                  },
                ),
                // Add more subcategory options for Mariage
              } else if (_category == 'Fête de Naissance') ...{
                ListTile(
                  title: Text('Décorateur de fête'),
                  onTap: () {
                    setState(() {
                      _subCategory = 'Décorateur de fête';
                    });
                    Navigator.pop(context);
                  },
                ),
                // Add more subcategory options for Fête de Naissance
              } else if (_category == 'Baby Shower') ...{
                ListTile(
                  title: Text('Agence décoration'),
                  onTap: () {
                    setState(() {
                      _subCategory = 'Agence décoration';
                    });
                    Navigator.pop(context);
                  },
                ),
                // Add more subcategory options for Baby Shower
              }
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Post'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              decoration: InputDecoration(labelText: 'Title'),
              onChanged: (value) {
                setState(() {
                  _title = value;
                });
              },
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Category'),
              controller: TextEditingController(text: _category),
              readOnly: true,
              onTap: () {
                _selectCategory(context);
              },
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Subcategory'),
              controller: TextEditingController(text: _subCategory),
              readOnly: true,
              onTap: () {
                _selectSubCategory(context);
              },
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _getImageFromGallery,
              child: const Text('Add Photo'),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: _takePicture,
              child: const Text('Take Picture'),
            ),
            SizedBox(height: 20),
            _imageFile != null
                ? Image.file(_imageFile!)
                : const Text('No image selected'),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Implement logic to submit the form
                // You can use _title, _category, _subCategory, and _imageFile here
              },
              child: const Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
