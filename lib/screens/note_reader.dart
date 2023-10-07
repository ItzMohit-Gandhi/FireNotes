import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import '../style/app_style.dart';

class NoteraederScreen extends StatefulWidget {
  NoteraederScreen(this.doc, {super.key});
  QueryDocumentSnapshot doc;
  @override
  State<NoteraederScreen> createState() => _NoteraederScreenState();
}

class _NoteraederScreenState extends State<NoteraederScreen> {
  @override
  Widget build(BuildContext context) {
    int color_id = widget.doc['color_id'];
    return Scaffold(
      backgroundColor: AppStyle.cardsColor[color_id],
      appBar: AppBar(
        backgroundColor: AppStyle.cardsColor[color_id],
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            widget.doc["note_title"],
            style: AppStyle.mainTitle,
          ),
          SizedBox(
            height: 3,
          ),
          Text(
            widget.doc["creation_date"],
            style: AppStyle.dateTitle,
          ),
          SizedBox(
            height: 18,
          ),
          Text(
            widget.doc["note_content"],
            style: AppStyle.mainContent,
            overflow: TextOverflow.ellipsis,
          )
        ]),
      ),
    );
  }
}
