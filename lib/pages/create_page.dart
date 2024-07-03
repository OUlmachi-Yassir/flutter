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
  late String _category = '';
  late String _subCategory = '';
  late String _sousSubCategory = '';
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
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              title: Text('Mariage'),
              onTap: () {
                setState(() {
                  _category = 'Mariage';
                  _subCategory = '';
                  _sousSubCategory = '';
                });
                Navigator.pop(context);
                _selectSubCategory(context);
              },
            ),
            ListTile(
              title: Text('Baby gender'),
              onTap: () {
                setState(() {
                  _category = 'Baby gender';
                  _subCategory = '';
                  _sousSubCategory = '';
                });
                Navigator.pop(context);
                _selectSubCategory(context);
              },
            ),
            ListTile(
              title: Text('Fête de naissance / Sboua'),
              onTap: () {
                setState(() {
                  _category = 'Fête de naissance / Sboua';
                  _subCategory = '';
                  _sousSubCategory = '';
                });
                Navigator.pop(context);
                _selectSubCategory(context);
              },
            ),
            ListTile(
              title: Text('Anniversaire'),
              onTap: () {
                setState(() {
                  _category = 'Anniversaire';
                  _subCategory = '';
                  _sousSubCategory = '';
                });
                Navigator.pop(context);
                _selectSubCategory(context);
              },
            ),
            ListTile(
              title: Text('Conférence'),
              onTap: () {
                setState(() {
                  _category = 'Conférence';
                  _subCategory = '';
                  _sousSubCategory = '';
                });
                Navigator.pop(context);
                _selectSubCategory(context);
              },
            ),
          ],
        );
      },
    );
  }

  void _selectSubCategory(BuildContext context) {
    List<Widget> subCategoryWidgets = [];

    if (_category == 'Mariage') {
      subCategoryWidgets = [
        ListTile(
          title: Text('Traiteur'),
          onTap: () {
            setState(() {
              _subCategory = 'Traiteur';
              _sousSubCategory = '';
            });
            Navigator.pop(context);
          },
        ),
        ListTile(
          title: Text('Salle de fête ou Lieu de réception'),
          onTap: () {
            setState(() {
              _subCategory = 'Salle de fête ou Lieu de réception';
              _sousSubCategory = '';
            });
            Navigator.pop(context);
            _selectSousSubCategory(context, [
              'Salle de réception',
              'Villa privée',
            ]);
          },
        ),
        ListTile(
          title: Text('Planificateur de mariage Nagafa'),
          onTap: () {
            setState(() {
              _subCategory = 'Planificateur de mariage Nagafa';
              _sousSubCategory = '';
            });
            Navigator.pop(context);
          },
        ),
        ListTile(
          title: Text('Tyafer / Chocolatier'),
          onTap: () {
            setState(() {
              _subCategory = 'Tyafer / Chocolatier';
              _sousSubCategory = '';
            });
            Navigator.pop(context);
          },
        ),
        ListTile(
          title: Text('Photographe et vidéographe'),
          onTap: () {
            setState(() {
              _subCategory = 'Photographe et vidéographe';
              _sousSubCategory = '';
            });
            Navigator.pop(context);
          },
        ),
        ListTile(
          title: Text('Musique DJ ou Orchestre'),
          onTap: () {
            setState(() {
              _subCategory = 'Musique DJ ou Orchestre';
              _sousSubCategory = '';
            });
            Navigator.pop(context);
          },
        ),
        ListTile(
          title: Text('Pâtisserie / Wedding Cake'),
          onTap: () {
            setState(() {
              _subCategory = 'Pâtisserie / Wedding Cake';
              _sousSubCategory = '';
            });
            Navigator.pop(context);
          },
        ),
        ListTile(
          title: Text('Adoul / Cérémonie religieuse'),
          onTap: () {
            setState(() {
              _subCategory = 'Adoul / Cérémonie religieuse';
              _sousSubCategory = '';
            });
            Navigator.pop(context);
          },
        ),
        ListTile(
          title: Text('Maquilleur et coiffeur'),
          onTap: () {
            setState(() {
              _subCategory = 'Maquilleur et coiffeur';
              _sousSubCategory = '';
            });
            Navigator.pop(context);
          },
        ),
        ListTile(
          title: Text('Locataire des Robes de mariée et tenues pour le marié'),
          onTap: () {
            setState(() {
              _subCategory = 'Locataire des Robes de mariée et tenues pour le marié';
              _sousSubCategory = '';
            });
            Navigator.pop(context);
          },
        ),
        ListTile(
          title: Text('Spa / Hammam'),
          onTap: () {
            setState(() {
              _subCategory = 'Spa / Hammam';
              _sousSubCategory = '';
            });
            Navigator.pop(context);
          },
        ),
        ListTile(
          title: Text('Transport'),
          onTap: () {
            setState(() {
              _subCategory = 'Transport';
              _sousSubCategory = '';
            });
            Navigator.pop(context);
          },
        ),
        ListTile(
          title: Text('Agence de voyage “lune de miel”'),
          onTap: () {
            setState(() {
              _subCategory = 'Agence de voyage “lune de miel”';
              _sousSubCategory = '';
            });
            Navigator.pop(context);
          },
        ),
      ];
    } else if (_category == 'Baby gender') {
      subCategoryWidgets = [
        ListTile(
          title: Text('Agence décoration'),
          onTap: () {
            setState(() {
              _subCategory = 'Agence décoration';
              _sousSubCategory = '';
            });
            Navigator.pop(context);
          },
        ),
        ListTile(
          title: Text('Pâtissier ou boulanger'),
          onTap: () {
            setState(() {
              _subCategory = 'Pâtissier ou boulanger';
              _sousSubCategory = '';
            });
            Navigator.pop(context);
          },
        ),
        ListTile(
          title: Text('Traiteur'),
          onTap: () {
            setState(() {
              _subCategory = 'Traiteur';
              _sousSubCategory = '';
            });
            Navigator.pop(context);
          },
        ),
      ];
    } else if (_category == 'Fête de naissance / Sboua') {
      subCategoryWidgets = [
    ListTile(
    title: Text('Artiste ou animateur'),
    onTap: () {
    setState(() {
    _subCategory = 'Artiste ou animateur';
    _sousSubCategory = '';
    });
    Navigator.pop(context);
    },
    ),
    ListTile(
    title: Text('Décorateur de fête'),
    onTap: () {
    setState(() {
    _subCategory = 'Décorateur de fête';
    _sousSubCategory = '';
    });
    Navigator.pop(context);
    },
    ),
    ListTile(
    title: Text('Traiteur'),
    onTap: () {
    setState(() {
    _subCategory = 'Traiteur';
    _sousSubCategory = '';
    });
    Navigator.pop(context);
    },
    ),
    ListTile(
    title: Text('Henné'),
    onTap: () {
    setState(() {
    _subCategory = 'Henné';
    _sousSubCategory = '';
    });
    Navigator.pop(context);
    },
    ),
    ListTile(
    title: Text('Lieu de réception'),
    onTap: () {
    setState(() {
    _subCategory = 'Lieu de réception';
    _sousSubCategory = '';
    });
    Navigator.pop(context);
    _selectSousSubCategory(context, [
    'Salle de réception',
    'Villa privée',
    ]);
    },
    ),
    ListTile(
    title: Text('Location de matériel'),
    onTap: () {
    setState(() {
    _subCategory = 'Location de matériel';
    _sousSubCategory
    = '';
    });
    Navigator.pop(context);
    },
    ),
        ListTile(
          title: Text('Pâtissier ou boulanger'),
          onTap: () {
            setState(() {
              _subCategory = 'Pâtissier ou boulanger';
              _sousSubCategory = '';
            });
            Navigator.pop(context);
          },
        ),
        ListTile(
          title: Text('Photographe et vidéographe'),
          onTap: () {
            setState(() {
              _subCategory = 'Photographe et vidéographe';
              _sousSubCategory = '';
            });
            Navigator.pop(context);
          },
        ),
      ];
    } else if (_category == 'Anniversaire') {
      subCategoryWidgets = [        ListTile(          title: Text('Anniversaire pour adultes'),          onTap: () {            setState(() {              _subCategory = 'Anniversaire pour adultes';              _sousSubCategory = '';            });            Navigator.pop(context);            _selectSousSubCategory(context, [              'Pâtissier ou boulanger',              'Traiteur',              'Décorateur de fête',              'Photographe et vidéographe',              'DJ ou groupe de musique',              'Lieu de réception',            ]);
      },
      ),
        ListTile(
          title: Text('Anniversaire pour enfants'),
          onTap: () {
            setState(() {
              _subCategory = 'Anniversaire pour enfants';
              _sousSubCategory = '';
            });
            Navigator.pop(context);
            _selectSousSubCategory(context, [
              'Pâtissier ou boulanger',
              'Traiteur',
              'Décorateur de fête',
              'Photographe et vidéographe',
              'Animateur',
              'Lieu de réception',
            ]);
          },
        ),
      ];
    } else if (_category == 'Conférence') {
      subCategoryWidgets = [        ListTile(          title: Text('Colloque'),          onTap: () {            setState(() {              _subCategory = 'Colloque';              _sousSubCategory = '';            });            Navigator.pop(context);            _selectSousSubCategory(context, [              'Traiteur',              'Salle hôtel',            ]);
      },
      ),
        ListTile(
          title: Text('Evènement professionnel'),
          onTap: () {
            setState(() {
              _subCategory = 'Evènement professionnel';
              _sousSubCategory = '';
            });
            Navigator.pop(context);
            _selectSousSubCategory(context, [
              'Traiteur',
              'Salle hôtel',
            ]);
          },
        ),
        ListTile(
          title: Text('Séminaire'),
          onTap: () {
            setState(() {
              _subCategory = 'Séminaire';
              _sousSubCategory = '';
            });
            Navigator.pop(context);
            _selectSousSubCategory(context, [
              'Traiteur',
              'Salle hôtel',
            ]);
          },
        ),
      ];
    }

    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: subCategoryWidgets,
        );
      },
    );
  }

  void _selectSousSubCategory(BuildContext context, List<String> sousSubCategories) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: sousSubCategories.map((sousSubCategory) {
            return ListTile(
              title: Text(sousSubCategory),
              onTap: () {
                setState(() {
                  _sousSubCategory = sousSubCategory;
                });
                Navigator.pop(context);
              },
            );
          }).toList(),
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
            TextField(
              decoration: InputDecoration(labelText: 'Sous Subcategory'),
              controller: TextEditingController(text: _sousSubCategory),
              readOnly: true,
              onTap: () {
                if (_subCategory.isNotEmpty) {
                  _selectSousSubCategory(context, []);
                }
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
                // You can use _title, _category, _subCategory, _sousSubCategory, and _imageFile here
              },
              child: const Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
