import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../services/auth.dart';

class Home extends StatelessWidget {

  final AuthService _authService = AuthService();

  Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[50],
      appBar: AppBar(
        title: Text('Brew Crew'),
        backgroundColor: Colors.brown[400],
        elevation: 0.0,
        centerTitle: true,
        actions: [
          TextButton.icon(onPressed: () async{
            await _authService.logout();
          },
              icon: Icon(Icons.person),
          label: Text('Logout'))
        ],
      ),
    );
  }
}
