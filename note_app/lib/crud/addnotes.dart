import 'package:flutter/material.dart';

class AddNotes extends StatefulWidget {
  const AddNotes({super.key});

  @override
  State<AddNotes> createState() => _AddNotesState();
}

class _AddNotesState extends State<AddNotes> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Add Note"),
        ),
        body: Container(
          child: Container(
            child: Column(
              children: [
                Form(
                    child: Column(
                  children: [
                    TextFormField(
                      maxLength: 30,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        labelText: "Title Note",
                        prefixIcon: Icon(Icons.note),
                      ),
                    ),
                    TextFormField(
                      maxLength: 200,
                      minLines: 1,
                      maxLines: 4,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        labelText: "Note",
                        prefixIcon: Icon(Icons.note),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        showBottomSheet();
                      },
                      child: Text("Add Image For Note"),
                    ),
                    ElevatedButton(
                      style: ButtonStyle(
                        padding: MaterialStatePropertyAll(
                          EdgeInsets.symmetric(
                            vertical: 15,
                            horizontal: 100,
                          ),
                        ),
                        backgroundColor: MaterialStatePropertyAll(
                            const Color.fromARGB(255, 227, 109, 109)),
                      ),
                      onPressed: () {},
                      child: Text("Add Note"),
                    )
                  ],
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }

  showBottomSheet() {
    return showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            padding: EdgeInsets.all(20),
            height: 170,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Please Choose Image",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(15),
                    child: Row(
                      children: [
                        Icon(Icons.photo_outlined),
                        Text(
                          "   From Galery",
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Icon(Icons.camera),
                        Text(
                          "   From Camera",
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        });
  }
}
