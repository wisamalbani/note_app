import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List notes = [
    {
      "note": "whhh 1 wqwerfw erkljgvnsekfm ksn",
      "image": "1.jpg",
    },
    {
      "note": "whhh 2 wqwerfw erkljgvnsekfm ksn",
      "image": "1.jpg",
    },
    {
      "note": "whhh 3 wqwerfw erkljgvnsekfm ksn",
      "image": "1.jpg",
    },
    {
      "note": "whhh 4 wqwerfw erkljgvnsekfm ksn",
      "image": "1.jpg",
    },
    {
      "note": "whhh 5 wqwerfw erkljgvnsekfm ksn",
      "image": "1.jpg",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: Text("homepage"),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            Navigator.of(context).pushNamed("addnotes");
          },
        ),
        body: Container(
          child: ListView.builder(
            itemCount: notes.length,
            itemBuilder: (context, i) {
              return Dismissible(
                key: Key("$i"),
                child: ListNotes(
                  notes: notes[i],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

class ListNotes extends StatelessWidget {
  final notes;
  ListNotes({this.notes});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Card(
            child: Image.asset(
              "images/2.png",
              fit: BoxFit.fill,
              height: 60,
            ),
          ),
        ),
        Expanded(
          flex: 4,
          child: Card(
            child: ListTile(
              title: Text("Title"),
              subtitle: Text("${notes['note']}"),
              trailing: IconButton(
                onPressed: () {},
                icon: Icon(Icons.edit),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
