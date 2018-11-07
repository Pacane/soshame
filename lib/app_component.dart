import 'package:angular/angular.dart';

import 'src/post_list/post_list_component.dart';

// AngularDart info: https://webdev.dartlang.org/angular
// Components info: https://webdev.dartlang.org/components

@Component(
  selector: 'my-app',
  styleUrls: ['app_component.css'],
  templateUrl: 'app_component.html',
  directives: [PostListComponent],
)
class AppComponent {
  // Nothing here yet. All logic is in TodoListComponent.
}
