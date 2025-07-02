import 'package:flutter/material.dart';

class Community extends StatefulWidget {
  const Community({super.key});

  @override
  State<Community> createState() => _CommunityState();
}

class _CommunityState extends State<Community> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEFF1D7),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xFF5B7B3F),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white70,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.chat_bubble), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.menu), label: ''),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              color: const Color(0xFF5B7B3F),
              padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 18),
              child: const Row(
                children: [
                  Expanded(
                    child: Text(
                      'Community',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Icon(Icons.help_outline, color: Colors.white, size: 28),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 14, horizontal: 18),
              width: double.infinity,
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFD6E3C3),
                  foregroundColor: const Color(0xFF5B7B3F),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  elevation: 0,
                ),
                onPressed: () {},
                icon: const Icon(Icons.question_answer),
                label: const Text(
                  'Ask a question',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
              ),
            ),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                children: [
                  // Post 1
                  Container(
                    margin: const EdgeInsets.only(bottom: 16),
                    padding: const EdgeInsets.all(14),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            const CircleAvatar(
                              backgroundImage: AssetImage('assets/images/user1.png'),
                              radius: 18,
                            ),
                            const SizedBox(width: 10),
                            const Text(
                              'Tamara A.',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF5B7B3F),
                              ),
                            ),
                            const SizedBox(width: 8),
                            const Text(
                              '31w ago',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 12,
                              ),
                            ),
                            const Spacer(),
                            Icon(Icons.more_vert, color: Colors.grey[600]),
                          ],
                        ),
                        const SizedBox(height: 8),
                        const Text(
                          'How to control aphids on plants?',
                          style: TextStyle(
                            fontSize: 16,
                            color: Color(0xFF5B7B3F),
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Row(
                          children: [
                            Icon(Icons.favorite_border, size: 18, color: Color(0xFF5B7B3F)),
                            SizedBox(width: 4),
                            Text(
                              '2 comments',
                              style: TextStyle(
                                color: Color(0xFF5B7B3F),
                                fontSize: 13,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  // Post 2
                  Container(
                    margin: const EdgeInsets.only(bottom: 16),
                    padding: const EdgeInsets.all(14),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            const CircleAvatar(
                              backgroundImage: AssetImage('assets/images/user2.png'),
                              radius: 18,
                            ),
                            const SizedBox(width: 10),
                            const Text(
                              'Desmond K.',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF5B7B3F),
                              ),
                            ),
                            const SizedBox(width: 8),
                            const Text(
                              '1 day ago',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 12,
                              ),
                            ),
                            const Spacer(),
                            Icon(Icons.more_vert, color: Colors.grey[600]),
                          ],
                        ),
                        const SizedBox(height: 8),
                        const Text(
                          'My cabbage harvest!',
                          style: TextStyle(
                            fontSize: 16,
                            color: Color(0xFF5B7B3F),
                          ),
                        ),
                        const SizedBox(height: 10),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.asset(
                            'assets/images/cabbage.png',
                            height: 110,
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Row(
                          children: [
                            Icon(Icons.favorite_border, size: 18, color: Color(0xFF5B7B3F)),
                            SizedBox(width: 4),
                            Text(
                              '5 likes',
                              style: TextStyle(
                                color: Color(0xFF5B7B3F),
                                fontSize: 13,
                              ),
                            ),
                            SizedBox(width: 16),
                            Icon(Icons.comment, size: 18, color: Color(0xFF5B7B3F)),
                            SizedBox(width: 4),
                            Text(
                              '3 comments',
                              style: TextStyle(
                                color: Color(0xFF5B7B3F),
                                fontSize: 13,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}