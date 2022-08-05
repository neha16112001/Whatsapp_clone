import 'package:flutter/material.dart';

class StatusScreen extends StatelessWidget {
  final images;
  final time;
  const StatusScreen({Key? key, this.images, this.time}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          contentPadding: EdgeInsets.only(left: 10, right: 10),
          leading: Container(
            height: 55,
            child: CircleAvatar(
              backgroundImage: AssetImage(images),
            ),
          ),
          title: Text(
            'My Status',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Text('Tap To Add Status Upadte'),
        ),
        Container(
          color: Colors.grey[300],
          padding: EdgeInsets.all(13),
          child: Row(
            children: [Text('Recent updates')],
          ),
        ),
        Divider(),
        Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: ListTile(
            contentPadding: EdgeInsets.only(right: 10),
            leading: Container(
              height: 60,
              width: 100,
              child: CircleAvatar(
                backgroundImage: AssetImage('user/Capture.JPG'),
              ),
            ),
            title: Text('Rahul Sir'),
            subtitle: Text(time),
          ),
        ),
        Divider(),
        Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: ListTile(
            contentPadding: EdgeInsets.only(right: 10),
            leading: Container(
              height: 60,
              width: 100,
              child: CircleAvatar(
                backgroundImage: AssetImage(images),
              ),
            ),
            title: Text('Vaishnavi'),
            subtitle: Text('45 mintues ago'),
          ),
        ),
        Divider()
      ],
    );
  }
}
