import 'package:convo_zone/info.dart';
import 'package:convo_zone/screens/mobile_chat_screen.dart';
import 'package:flutter/material.dart';

class ContactsList extends StatelessWidget {
  const ContactsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: info.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => MobileChatScreen(index: index),
                ),
              );
            },
            onLongPress: () {},
            onHover: (value) {},
            child: Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              // Visit https://api.flutter.dev/flutter/material/ListTile-class.html
              // To know more about ListTile Class
              child: ListTile(
                title: Text(
                  info[index]['name'].toString(),
                  style: const TextStyle(fontSize: 18),
                ),
                subtitle: Text(
                  info[index]['message'].toString(),
                  style: const TextStyle(fontSize: 15),
                ),
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                    info[index]['profilePic'].toString(),
                  ),
                  radius: 25,
                ),
                trailing: Text(
                  info[index]['time'].toString(),
                  style: const TextStyle(fontSize: 12, color: Colors.grey),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
