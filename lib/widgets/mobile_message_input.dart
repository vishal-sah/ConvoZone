import 'package:convo_zone/colors.dart';
import 'package:flutter/material.dart';

class MobileMessageInput extends StatefulWidget {
  const MobileMessageInput({super.key});

  @override
  State<MobileMessageInput> createState() => _MobileMessageInputState();
}

class _MobileMessageInputState extends State<MobileMessageInput> {
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
      padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 10),
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
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 2, right: 2),
              child: TextField(
                controller: _textEditingController,
                decoration: InputDecoration(
                  prefixIcon: IconButton(
                    onPressed: () {
                      showModalBottomSheet(
                        context: context,
                        builder: (BuildContext subcontext) {
                          return const SizedBox(
                            height: 256,
                            child: Placeholder(), // Emoji selector
                          );
                        },
                      );
                    },
                    icon: const Icon(
                      Icons.emoji_emotions_outlined,
                      color: Colors.grey,
                    ),
                  ),
                  suffixIcon: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.attach_file,
                      color: Colors.grey,
                    ),
                  ),
                  fillColor: searchBarColor,
                  filled: true,
                  hintText: 'Message',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(
                      width: 0,
                      style: BorderStyle.none,
                    ),
                  ),
                  contentPadding: const EdgeInsets.only(left: 10),
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
