import 'package:convo_zone/colors.dart';
import 'package:flutter/material.dart';

class WebMessageInput extends StatefulWidget {
  const WebMessageInput({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _WebMessageInputState createState() => _WebMessageInputState();
}

class _WebMessageInputState extends State<WebMessageInput> {
  final TextEditingController _textEditingController = TextEditingController();
  bool _showSendIcon = false;

  @override
  void initState() {
    super.initState();
    _textEditingController.addListener(_onTextChanged);
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  void _onTextChanged() {
    setState(() {
      _showSendIcon = _textEditingController.text.isNotEmpty;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.07,
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: dividerColor,
          ),
        ),
        color: chatBarColor,
      ),
      child: Row(
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.attach_file,
              color: Colors.grey,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.emoji_emotions_outlined,
              color: Colors.grey,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 15),
              child: TextField(
                controller: _textEditingController,
                decoration: InputDecoration(
                  fillColor: searchBarColor,
                  filled: true,
                  hintText: 'Type a message',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(
                      width: 0,
                      style: BorderStyle.none,
                    ),
                  ),
                  contentPadding: const EdgeInsets.only(left: 20),
                ),
              ),
            ),
          ),
          IconButton(
            onPressed: () {
              if (_showSendIcon) {
                // Send button functionality
              } else {
                // Microphone button functionality
              }
            },
            icon: Icon(
              _showSendIcon ? Icons.send : Icons.mic,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
