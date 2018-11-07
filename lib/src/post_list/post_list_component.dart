import 'dart:async';

import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';

import 'post_service.dart';

@Component(
  selector: 'post-list',
  styleUrls: ['post_list_component.css'],
  templateUrl: 'post_list_component.html',
  directives: [
    MaterialCheckboxComponent,
    MaterialFabComponent,
    MaterialIconComponent,
    materialInputDirectives,
    NgFor,
    NgIf,
  ],
  providers: [const ClassProvider(TodoListService)],
)
class PostListComponent implements OnInit {
  final TodoListService todoListService;

  Set<Post> items = Set();
  String newTodo = '';

  PostListComponent(this.todoListService);

  @override
  Future<Null> ngOnInit() async {
    todoListService.getTodoList().listen(((Post post) => items.add(post)));
  }
}
