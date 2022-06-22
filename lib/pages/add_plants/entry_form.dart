import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class EntryForm extends StatefulWidget {
  const EntryForm({Key? key}) : super(key: key);

  @override
  State<EntryForm> createState() => _EntryFormState();
}

class _EntryFormState extends State<EntryForm> {
  TextEditingController nameController = TextEditingController();
  TextEditingController weeksController = TextEditingController();
  TextEditingController timeController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            child: Icon(
              Icons.arrow_back_ios,
            ),
            onTap: () {
              Navigator.pop(context);
            }),
        title: Text(
          "Add Plant",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.w600, fontSize: 21),
        ),
        elevation: 10,
        backgroundColor: Colors.grey[500],
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 15.0, left: 10.0, right: 10.0),
        child: ListView(
          children: <Widget>[
            // nama
            Padding(
              padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
              child: TextField(
                controller: nameController,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: 'Plants Name',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
                onChanged: (value) {
                  //
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
              child: TextField(
                controller: nameController,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: 'How many weeks?',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
                onChanged: (value) {
                  //
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
              child: TextField(
                controller: nameController,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: 'Time',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
                onChanged: (value) {
                  //
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
              child: Row(
                children: <Widget>[
                  // tombol simpan
                  Expanded(
                    child: RaisedButton(
                        color: Colors.grey[500],
                        textColor: Colors.white,
                        child: Text(
                          'Save',
                          textScaleFactor: 1.5,
                        ),
                        onPressed: () {
//       if (item == null) {
//  // tambah data
// item = Item(nameController.text,
// int.parse(priceController.text));
//  } else {
//  // ubah data
// item.name = nameController.text;
// item.price = int.parse(priceController.text);
                        }
                        // kembali ke layar sebelumnya dengan membawa objek item
//  Navigator.pop(context, item);
//  },
                        ),
                  ),
                  Container(
                    width: 5.0,
                  ),
                  // tombol batal
                  Expanded(
                    child: RaisedButton(
                      color: Colors.grey[500],
                      textColor: Colors.white,
                      child: Text(
                        'Cancel',
                        textScaleFactor: 1.5,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
