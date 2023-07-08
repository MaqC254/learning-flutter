import 'package:brew_crew/services/auth.dart';
import 'package:brew_crew/shared/loading.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {

  final Function toggleView;
  const SignIn({super.key, required this.toggleView});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

  final AuthService _authService = AuthService();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passController = TextEditingController();
  late String email;
  late String password;
  String error = '';
  bool loading = false;

  final _formKey = GlobalKey<FormState>();

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
    return loading ? Loading():Scaffold(
      backgroundColor: Colors.brown,
      appBar: AppBar(
        actions: [
          TextButton.icon(onPressed: (){
            widget.toggleView();
          },
              icon: const Icon(Icons.person,
              color: Colors.black,),
              label: const Text('Register',
              style: TextStyle(
                color: Colors.black,
              ),))
        ],
        backgroundColor: Colors.brown[400],
        elevation: 0.0,
        title: const Text('Sign In'),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 50),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              const SizedBox(
                height: 20,),
              TextFormField(
                autocorrect: false,
                keyboardType: TextInputType.emailAddress,
                validator: (val) => val!.isEmpty ? 'Enter a valid email' : null,
                controller: _emailController,
                decoration: const InputDecoration(
                  label: Text('Enter your email'),
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
              const SizedBox(
                height: 20,),
              TextFormField(
                validator: (val) => val!.length<6 ? 'Enter a password that is 6 characters or more' : null,
                controller: _passController,
                obscureText: true,
                enableSuggestions: false,
                autocorrect: false,
                decoration: const InputDecoration(
                  label: Text('Enter your password'),
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () async{
                    if(_formKey.currentState!.validate()){
                      setState(() {
                        loading = true;
                      });
                    dynamic response = await _authService.signInWithEmail(email, password);
                    if(response == null){
                      setState(() {
                        loading = false;
                        error = 'Wrong email or password entered';
                      });
                    }
                    }
              },
                  child:const Text('SignIn',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  ),
              ),
              const SizedBox(height: 12.0,),
              Text(error,
              style: const TextStyle(
                fontSize: 12,
                color: Colors.red,
                fontWeight: FontWeight.bold
              ),)
            ],
          ),
        )
      ),
    );
  }
}
