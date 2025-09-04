import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import '../../../auth/presentation/pages/login_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  User? _user;

  @override
  void initState() {
    super.initState();
    _user = Supabase.instance.client.auth.currentUser;
  }

  Future<void> _logout() async {
    try {
      await Supabase.instance.client.auth.signOut();
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const LoginPage()),
      );
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Logout failed: $e')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        actions: [
          IconButton(
            onPressed: _logout,
            icon: const Icon(Icons.logout),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Welcome!',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text('Email: ${_user?.email ?? 'Unknown'}'),
                    const SizedBox(height: 4),
                    Text('User ID: ${_user?.id ?? 'Unknown'}'),
                    const SizedBox(height: 4),
                    Text('Display Name: ${_user?.userMetadata?['display_name'] ?? 'Not set'}'),
                    const SizedBox(height: 4),
                    Text('Joined: ${_user?.createdAt ?? 'Unknown'}'),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'Authentication Status: Logged In ✅',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.green,
              ),
            ),
          ],
        ),
      ),
    );
  }
}