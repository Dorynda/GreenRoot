import 'package:flutter/material.dart';

class AgronomistChatPage extends StatefulWidget {
  const AgronomistChatPage({super.key});

  @override
  State<AgronomistChatPage> createState() => _AgronomistChatPageState();
}

class _AgronomistChatPageState extends State<AgronomistChatPage> {
  final TextEditingController _controller = TextEditingController();
  final List<Map<String, String>> messages = [
    {'from': 'agronomist', 'text': 'Hello! How can I help you today?'}
  ];

  void sendMessage() {
    if (_controller.text.trim().isEmpty) return;
    setState(() {
      messages.add({'from': 'user', 'text': _controller.text.trim()});
      _controller.clear();
    });
    // Optionally, add agronomist auto-reply here
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9F7E9),
      appBar: AppBar(
        backgroundColor: const Color(0xFF5B7B3F),
        title: const Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('assets/images/agronomist.png'),
              radius: 18,
            ),
            SizedBox(width: 10),
            Text(
              "Agronomist",
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: messages.length,
              itemBuilder: (context, index) {
                final msg = messages[index];
                final isUser = msg['from'] == 'user';
                return Align(
                  alignment:
                      isUser ? Alignment.centerRight : Alignment.centerLeft,
                  child: Container(
                    margin: const EdgeInsets.symmetric(vertical: 4),
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 16),
                    decoration: BoxDecoration(
                      color: isUser ? const Color(0xFF5B7B3F) : Colors.white,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Text(
                      msg['text']!,
                      style: TextStyle(
                        color: isUser ? Colors.white : const Color(0xFF5B7B3F),
                        fontSize: 16,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          Container(
            color: Colors.white,
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller,
                    decoration: const InputDecoration(
                      hintText: "Type your message...",
                      border: InputBorder.none,
                    ),
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.send, color: Color(0xFF5B7B3F)),
                  onPressed: sendMessage,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
