import 'package:flutter/material.dart';

class Farm extends StatefulWidget {
  const Farm({super.key});

  @override
  State<Farm> createState() => _FarmState();
}

class _FarmState extends State<Farm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEFF1D7),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header
            Container(
              color: const Color(0xFF5B7B3F),
              padding: const EdgeInsets.fromLTRB(18, 18, 18, 18),
              child: const Row(
                children: [
                  Expanded(
                    child: Text(
                      'My Farm',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Icon(Icons.calendar_month, color: Colors.white, size: 28),
                ],
              ),
            ),
            // Calendar (static mockup)
            Container(
              color: Colors.transparent,
              padding: const EdgeInsets.symmetric(vertical: 18),
              child: Column(
                children: [
                  const Text(
                    'June 2025',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Color(0xFF5B7B3F),
                    ),
                  ),
                  const SizedBox(height: 8),
                  // Days of week header
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      Text('S', style: TextStyle(color: Color(0xFF5B7B3F))),
                      Text('M', style: TextStyle(color: Color(0xFF5B7B3F))),
                      Text('T', style: TextStyle(color: Color(0xFF5B7B3F))),
                      Text('W', style: TextStyle(color: Color(0xFF5B7B3F))),
                      Text('T', style: TextStyle(color: Color(0xFF5B7B3F))),
                      Text('F', style: TextStyle(color: Color(0xFF5B7B3F))),
                      Text('S', style: TextStyle(color: Color(0xFF5B7B3F))),
                    ],
                  ),
                  const SizedBox(height: 6),
                  // Calendar days using Table for perfect alignment
                  Table(
                    children: const [
                      TableRow(
                        children: [
                          SizedBox(), // Empty for offset (June 1 is Saturday)
                          SizedBox(),
                          SizedBox(),
                          SizedBox(),
                          SizedBox(),
                          SizedBox(),
                          Center(child: Text('1', style: TextStyle(color: Color(0xFF5B7B3F)))),
                        ],
                      ),
                      TableRow(
                        children: [
                          Center(child: Text('2', style: TextStyle(color: Color(0xFF5B7B3F)))),
                          Center(child: Text('3', style: TextStyle(color: Color(0xFF5B7B3F)))),
                          Center(child: Text('4', style: TextStyle(color: Color(0xFF5B7B3F)))),
                          Center(child: Text('5', style: TextStyle(color: Color(0xFF5B7B3F)))),
                          Center(child: Text('6', style: TextStyle(color: Color(0xFF5B7B3F)))),
                          Center(child: Text('7', style: TextStyle(color: Color(0xFF5B7B3F)))),
                          Center(child: Text('8', style: TextStyle(color: Color(0xFF5B7B3F)))),
                        ],
                      ),
                      TableRow(
                        children: [
                          Center(child: Text('9', style: TextStyle(color: Color(0xFF5B7B3F)))),
                          Center(child: Text('10', style: TextStyle(color: Color(0xFF5B7B3F)))),
                          Center(child: Text('11', style: TextStyle(color: Color(0xFF5B7B3F)))),
                          Center(child: Text('12', style: TextStyle(color: Color(0xFF5B7B3F)))),
                          Center(child: Text('13', style: TextStyle(color: Color(0xFF5B7B3F)))),
                          Center(child: Text('14', style: TextStyle(color: Color(0xFF5B7B3F)))),
                          Center(child: Text('15', style: TextStyle(color: Color(0xFF5B7B3F)))),
                        ],
                      ),
                      TableRow(
                        children: [
                          Center(child: Text('16', style: TextStyle(color: Color(0xFF5B7B3F)))),
                          Center(child: Text('17', style: TextStyle(color: Color(0xFF5B7B3F)))),
                          Center(child: Text('18', style: TextStyle(color: Color(0xFF5B7B3F)))),
                          Center(child: Text('19', style: TextStyle(color: Color(0xFF5B7B3F)))),
                          Center(child: Text('20', style: TextStyle(color: Color(0xFF5B7B3F)))),
                          Center(child: Text('21', style: TextStyle(color: Color(0xFF5B7B3F)))),
                          Center(child: Text('22', style: TextStyle(color: Color(0xFF5B7B3F)))),
                        ],
                      ),
                      TableRow(
                        children: [
                          Center(child: Text('23', style: TextStyle(color: Color(0xFF5B7B3F)))),
                          Center(child: Text('24', style: TextStyle(color: Color(0xFF5B7B3F)))),
                          Center(child: Text('25', style: TextStyle(color: Color(0xFF5B7B3F)))),
                          Center(child: Text('26', style: TextStyle(color: Color(0xFF5B7B3F)))),
                          Center(child: Text('27', style: TextStyle(color: Color(0xFF5B7B3F)))),
                          Center(child: Text('28', style: TextStyle(color: Color(0xFF5B7B3F)))),
                          Center(child: Text('29', style: TextStyle(color: Color(0xFF5B7B3F)))),
                        ],
                      ),
                      TableRow(
                        children: [
                          Center(child: Text('30', style: TextStyle(color: Color(0xFF5B7B3F)))),
                          SizedBox(),
                          SizedBox(),
                          SizedBox(),
                          SizedBox(),
                          SizedBox(),
                          SizedBox(),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  // Dots for events
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      5,
                      (index) => Container(
                        margin: const EdgeInsets.symmetric(horizontal: 6),
                        width: 10,
                        height: 10,
                        decoration: const BoxDecoration(
                          color: Color(0xFF5B7B3F),
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // Chat with agronomist
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 8),
              child: Container(
                decoration: BoxDecoration(
                  color: const Color(0xFFD6E3C3),
                  borderRadius: BorderRadius.circular(18),
                ),
                padding: const EdgeInsets.all(16),
                child: const Row(
                  children: [
                    // Replace with your own asset if available
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      backgroundImage:
                          AssetImage('assets/images/agronomist.png'),
                    ),
                    SizedBox(width: 19),
                    Text(
                      'Chat with an\nagronomist',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                        color: Color(0xFF5B7B3F),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // Tasks
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 4),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(18),
                    ),
                    padding: const EdgeInsets.symmetric(
                        vertical: 14, horizontal: 16),
                    child: const Row(
                      children: [
                        Icon(Icons.spa, color: Color(0xFF5B7B3F)),
                        SizedBox(width: 12),
                        Expanded(
                          child: Text(
                            'Planting',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Color(0xFF5B7B3F),
                            ),
                          ),
                        ),
                        Text(
                          '9',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Color(0xFF5B7B3F),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(18),
                    ),
                    padding: const EdgeInsets.symmetric(
                        vertical: 14, horizontal: 16),
                    child: const Row(
                      children: [
                        Icon(Icons.eco, color: Color(0xFF5B7B3F)),
                        SizedBox(width: 12),
                        Expanded(
                          child: Text(
                            'Fertilizing',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Color(0xFF5B7B3F),
                            ),
                          ),
                        ),
                        Text(
                          '12',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Color(0xFF5B7B3F),
                          ),
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
