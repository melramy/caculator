import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:instagram_app/firebase_services/storage.dart';
import 'package:instagram_app/models/user.dart';
import 'package:instagram_app/shared/snackbar.dart';

class AuthMethods {
  register(
      {required emailll,
      required pasworddd,
      required context,
      required usernameee,
      required titleee,
      required imgPath,
      required imgName}) async {
    String message = "ERROR => Not string the code";

    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailll,
        password: pasworddd,
      );

      message = "ERROR => Registered only";
//----------------------------

      String urlll = await getImgURL(imgName: imgName, imgPath: imgPath);

      CollectionReference users =
          FirebaseFirestore.instance.collection('userSSS');

      UserData userr = UserData(
        email: emailll,
        password: pasworddd,
        title: titleee,
        username: usernameee,
        profileImg: urlll,
        uid: credential.user!.uid,
      );

      users
          .doc(credential.user!.uid)
          .set(userr.convert2Map())
          .then((value) => print("User Added"))
          .catchError((error) => print("Failed to add user: $error"));

      message = " Registered & User Added to DB 👆";
    } on FirebaseAuthException catch (e) {
      showSnackBar(context, "ERROR :  ${e.code} ");
    } catch (e) {
      print(e);
    }

    showSnackBar(context, message);
  }

  signIn({required emailll, required passworddd, required context}) async {
    try {
      final credential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: emailll, password: passworddd);
    } on FirebaseAuthException catch (e) {
      showSnackBar(context, "ERROR :  ${e.code} ");
    } catch (e) {
      print(e);
    }
  }
}
