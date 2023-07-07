import 'package:brew_crew/services/auth.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {

  final AuthService _authService = AuthService();

  final emailController = TextEditingController();
  final  passController = TextEditingController();
  late String email;
  late String password;

  @override
  void dispose(){
    super.dispose();
    emailController.dispose();
    passController.dispose();
  }

  @override
  void initState(){
    emailController.addListener(setValue);
    passController.addListener(setValue);
    super.initState();
  }

  void setValue(){
    email = emailController.text;
    password = passController.text;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown,
      appBar: AppBar(
        backgroundColor: Colors.brown[400],
        elevation: 0.0,
        title: const Text('Sign up'),
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
                  controller: emailController,
                  onChanged: (val){

                  },
                  decoration: const InputDecoration(
                    label: Text('Enter your email'),
                  ),
                ),
                const SizedBox(
                  height: 20,),
                TextFormField(
                  controller: passController,
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
                    await _authService.createUser(email, password);
                  },
                  child:const Text('Register',
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
