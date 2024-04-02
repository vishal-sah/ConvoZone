import 'package:convo_zone/widgets/chat_list.dart';
import 'package:convo_zone/widgets/contacts_list.dart';
import 'package:convo_zone/widgets/web_chat_app_bar.dart';
import 'package:convo_zone/widgets/web_message_input.dart';
import 'package:convo_zone/widgets/web_profile_bar.dart';
import 'package:convo_zone/widgets/web_search_bar.dart';
import 'package:flutter/material.dart';

class WebScreenLayout extends StatefulWidget {
  const WebScreenLayout({super.key});

  @override
  State<WebScreenLayout> createState() => _WebScreenLayoutState();
}

class _WebScreenLayoutState extends State<WebScreenLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  // Profile Bar
                  WebProfileBar(),
                  // Search Bar
                  WebSearchBar(),
                  // Contact List
                  ContactsList(),
                ],
              ),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.75,
            child: const Column(
              children: [
                WebChatAppBar(),
                Expanded(
                  child: ChatList(),
                ),
                WebMessageInput(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
