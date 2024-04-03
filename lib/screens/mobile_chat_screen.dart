import 'package:convo_zone/colors.dart';
import 'package:convo_zone/info.dart';
import 'package:convo_zone/widgets/chat_list.dart';
import 'package:convo_zone/widgets/mobile_message_input.dart';
import 'package:flutter/material.dart';

class MobileChatScreen extends StatelessWidget {
  final int index;
  const MobileChatScreen({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor,
        title: Text(
          info[index]['name'].toString(),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.video_call)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.call)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
        ],
      ),
      body: const Column(
        children: [
          Expanded(
            child: ChatList(),
          ),
          MobileMessageInput(),
        ],
      ),
    );
  }
}
