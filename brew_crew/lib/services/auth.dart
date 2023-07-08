import 'package:firebase_auth/firebase_auth.dart';
import 'package:brew_crew/models/user.dart';

class AuthService{
final FirebaseAuth _auth = FirebaseAuth.instance;

//create user object based on firebase user
  UserLocal? _userFromFirebase(User? user){
    return user != null ? UserLocal(uid: user.uid) : null;
  }

  //auth change user stream
  Stream<UserLocal?> get user{
    return _auth.authStateChanges()
        .map((User? user) => _userFromFirebase(user));
    //.map((event) => _userFromFirebase(user as User?));
  }

Future signInAnon() async{
  try{
    UserCredential result = await _auth.signInAnonymously();
    User? user = result.user;
    return user;
  }
  catch(e){
    print(e.toString());
    return null;
  }
}

Future logout() async{
    try{
      await _auth.signOut();
    }
    catch (e){
      print(e.toString());
    }
}

Future signInWithEmail(String email, String password) async{
    try{
      UserCredential response = await _auth.signInWithEmailAndPassword(email: email, password: password);
      User? user = response.user;
      return _userFromFirebase(user);
    }
    catch(e){
      print(e.toString());
      return null;
    }
}

Future createUser(String email, String password) async{
    try{
    UserCredential result = await _auth.createUserWithEmailAndPassword(email: email, password: password);
    User? user = result.user;
    return _userFromFirebase(user);
    }
    catch (e){
      print(e.toString());
      return null;
    }
  }

}