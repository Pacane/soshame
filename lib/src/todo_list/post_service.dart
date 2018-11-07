import 'dart:async';

import 'package:angular/core.dart';

@Injectable()
class TodoListService {
  List<String> mockTodoList = <String>[
    "https://i.imgur.com/jKXVFRo.png",
    "https://i.imgur.com/p7ftnbp.png",
  ];

  Future<List<String>> getTodoList() async => mockTodoList;
}
