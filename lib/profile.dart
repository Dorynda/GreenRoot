import 'package:flutter/material.dart';
import 'package:my_greenroot_app/login.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9F7E9),
      body: SafeArea(
        child: Center(
          child: Container(
            margin: const EdgeInsets.all(24),
            padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(28),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Profile avatar
                const CircleAvatar(
                  radius: 48,
                  backgroundImage: AssetImage('assets/images/profile.jpg'),
                ),
                const SizedBox(height: 16),
                // Name
                const Text(
                  "Theophilus Nuamah",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF2C6B2F),
                  ),
                ),
                const SizedBox(height: 4),
                // Email
                const Text(
                  "theo99@gmail.com",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black54,
                  ),
                ),
                const SizedBox(height: 16),
                const Divider(),
                // Menu options
                ListTile(
                  leading: const Icon(Icons.edit, color: Color(0xFF2C6B2F)),
                  title: const Text("Edit Profile"),
                  trailing: const Icon(Icons.chevron_right),
                  onTap: () {},
                ),
                ListTile(
                  leading: const Icon(Icons.account_circle_outlined,
                      color: Color(0xFF2C6B2F)),
                  title: const Text("Account"),
                  trailing: const Icon(Icons.chevron_right),
                  onTap: () {},
                ),
                ListTile(
                  leading: const Icon(Icons.notifications_none,
                      color: Color(0xFF2C6B2F)),
                  title: const Text("Notifications"),
                  trailing: const Icon(Icons.chevron_right),
                  onTap: () {},
                ),
                ListTile(
                  leading:
                      const Icon(Icons.lock_outline, color: Color(0xFF2C6B2F)),
                  title: const Text("Security"),
                  trailing: const Icon(Icons.chevron_right),
                  onTap: () {},
                ),
                ListTile(
                  leading:
                      const Icon(Icons.help_outline, color: Color(0xFF2C6B2F)),
                  title: const Text("Help"),
                  trailing: const Icon(Icons.chevron_right),
                  onTap: () {},
                ),
                const Divider(),
                // Log out
                ListTile(
                  leading: const Icon(Icons.logout, color: Color(0xFF2C6B2F)),
                  title: const Text(
                    "Log out",
                    style: TextStyle(
                      color: Color(0xFF2C6B2F),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onTap: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (context) => const Login()),
                      (route) => false,
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
