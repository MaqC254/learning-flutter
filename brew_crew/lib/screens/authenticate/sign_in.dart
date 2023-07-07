import 'package:brew_crew/services/auth.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

  final AuthService _authService = AuthService();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passController = TextEditingController();
  late String email;
  late String password;

  @override
  void initState(){
    super.initState();
    _emailController.addListener(setValues);
    _passController.addListener(setValues);
  }

  @override
  void dispose(){
    super.dispose();
    _emailController.dispose();
    _passController.dispose();
  }

  void setValues(){
    email = _emailController.text;
    password = _passController.text;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown,
      appBar: AppBar(
        backgroundColor: Colors.brown[400],
        elevation: 0.0,
        title: const Text('Sign In'),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 50),
        child: Form(
          child: Column(
            children: [
              const SizedBox(
                height: 20,),
              TextFormField(
                controller: _emailController,
                onChanged: (val){

              },
                decoration: const InputDecoration(
                  label: Text('Enter your email'),
                ),
              ),
              const SizedBox(
                height: 20,),
              TextFormField(
                controller: _passController,
                onChanged: (val){
                },
                obscureText: true,
                decoration: const InputDecoration(
                  label: Text('Enter your password'),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () async{
                    _authService.signInWithEmail(email, password);
              },
                  child:const Text('SignIn',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  ),
              ),
            ],
          ),
        )
      ),
    );
  }
}
