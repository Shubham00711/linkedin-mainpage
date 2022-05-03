import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService {
  //get the uid to create doc for particular user (to connect collection with user)
  final String uid;
  DatabaseService(this.uid);

  //collection refrences
  final CollectionReference usersCollection =
      FirebaseFirestore.instance.collection('users');

  Future updateUsersData(String userName, String age, String emailId) async {
    return await usersCollection.doc(uid).set({
      'name': userName,
      'age': age,
      'emailId': emailId,
    });
  }

  //get users stream
  Stream<QuerySnapshot?> get usersStream {
    return usersCollection.snapshots();
  }

}