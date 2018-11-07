import 'package:angular/angular.dart';

import 'src/post_list/post_list_component.dart';

@Component(
  selector: 'my-app',
  styleUrls: ['app_component.css'],
  templateUrl: 'app_component.html',
  directives: [PostListComponent],
)
class AppComponent {
}
