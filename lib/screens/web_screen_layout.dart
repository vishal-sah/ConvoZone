import 'package:convo_zone/widgets/contacts_list.dart';
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
          Container(
            width: MediaQuery.of(context).size.width * 0.75,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/backgroundImage.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: const Center(child: Text('Chats')),
          ),
        ],
      ),
    );
  }
}
