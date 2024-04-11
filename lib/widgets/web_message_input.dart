import 'package:convo_zone/colors.dart';
import 'package:flutter/material.dart';

class WebMessageInput extends StatefulWidget {
  const WebMessageInput({super.key});

  @override
  State<WebMessageInput> createState() => _WebMessageInputState();
}

class _WebMessageInputState extends State<WebMessageInput> {
  final TextEditingController _textEditingController = TextEditingController();
  bool _isMessageEmpty = false;

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
      _isMessageEmpty = _textEditingController.text.isNotEmpty;
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
                  hintText: 'Message',
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
              if (_isMessageEmpty) {
                // Send button functionality
              } else {
                // Microphone button functionality
              }
            },
            icon: Icon(
              _isMessageEmpty ? Icons.send : Icons.mic,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
