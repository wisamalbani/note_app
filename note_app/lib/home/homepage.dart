import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List notes = [
    {
      "note": "whhh 1 wqwerfw erkljgvnsekfm ksn1",
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
    return Scaffold(
      appBar: AppBar(
        title: Text("homepage"),
      ),
      body: Container(
        child: ListView.builder(
          itemCount: notes.length,
          itemBuilder: (context, i) {
            return ListNotes(
              notes: notes[i],
            );
          },
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
          child: Card(
            child: Image.asset("images/2.png"),
          ),
        ),
        Expanded(
          child: Card(
            child: ListTile(
              title: Text("${notes['note']}"),
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
