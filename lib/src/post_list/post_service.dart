import 'dart:async';

import 'package:angular/core.dart';
import 'package:firebase/firebase.dart';
import 'package:firebase/firestore.dart' as fs;

@Injectable()
class TodoListService {
  fs.Firestore get _store => firestore();

  fs.CollectionReference get postsCollection => _store.collection(('posts'));

  Stream<Post> getTodoList() async* {
    await for (var q in postsCollection.onSnapshot) {
      for (var doc in q.docs) {
        var data = doc.data();
        yield Post.fromJson(doc.id, data);
      }
    }
  }

  TodoListService() {
    initializeApp(
        apiKey: "AIzaSyBJTRvJDjo7GIfu7keb6zzR7bKIbvtirRY",
        authDomain: "soshame-7aaa4.firebaseapp.com",
        databaseURL: "https://soshame-7aaa4.firebaseio.com",
        projectId: "soshame-7aaa4",
        storageBucket: "soshame-7aaa4.appspot.com",
        messagingSenderId: "746995503175");
  }
}

class Post {
  String id;
  String imageUrl;

  Post.fromJson(String id, Map<String, dynamic> json) {
    this.id = id;
    this.imageUrl = json['image_url'];
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Post && runtimeType == other.runtimeType && id == other.id;

  @override
  int get hashCode => id.hashCode;
}
