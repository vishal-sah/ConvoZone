import 'package:convo_zone/widgets/chat_list.dart';
import 'package:convo_zone/widgets/contacts_list.dart';
import 'package:convo_zone/widgets/web_chat_app_bar.dart';
import 'package:convo_zone/widgets/web_profile_bar.dart';
import 'package:convo_zone/widgets/web_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class WebScreenLayout extends StatelessWidget {
  const WebScreenLayout({super.key});

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
                // Message Input
              ],
            ),
          ),
        ],
      ),
    );
  }
}
