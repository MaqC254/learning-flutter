import 'package:brew_crew/services/auth.dart';
import 'package:brew_crew/shared/loading.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {

  final Function toggleView;
  const Register({super.key, required this.toggleView});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {

  final AuthService _authService = AuthService();

  final emailController = TextEditingController();
  final  passController = TextEditingController();
  late String email;
  late String password;
  String error = '';
  bool loading = false;

  final _formKey = GlobalKey<FormState>();

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
    return loading ? Loading() : Scaffold(
      backgroundColor: Colors.brown,
      appBar: AppBar(
        actions: [
          TextButton.icon(onPressed: (){
            widget.toggleView();
          },
              icon: const Icon(Icons.person,
              color: Colors.black,
              ),
              label: const Text('Sign In',
              style: TextStyle(
                color: Colors.black,
              ),
              ),
          ),
        ],
        backgroundColor: Colors.brown[400],
        elevation: 0.0,
        title: const Text('Sign up'),
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
                  validator: (val) => val!.isEmpty ? 'Enter an email' : null,
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  autocorrect: false,
                  decoration: const InputDecoration(
                    label: Text('Enter your email'),
                    filled: true,
                    fillColor: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 20,),
                TextFormField(
                  validator: (val)=> val!.length<6 ? 'Enter a password with 6 characters or more' : null,
                  controller: passController,
                  obscureText: true,
                  autocorrect: false,
                  enableSuggestions: false,
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
                      dynamic result = await _authService.createUser(email, password);
                      if(result == null){
                        setState(() {
                          loading = false;
                          error = 'Email or password is invalid';
                        });
                      }
                    }
                  },
                  child:const Text('Register',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(
                    height: 12,
                ),
                Text(error,
                style:const TextStyle(
                  color: Colors.red,
                  fontSize: 12.0,
                ),)
              ],
            ),
          ),
      ),
    );
  }
}
