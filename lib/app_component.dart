import 'src/routes.dart';
import 'package:angular_router/angular_router.dart';
import 'package:angular/angular.dart';

@Component(
  selector: 'my-app',
  template: '<router-outlet [routes]="Routes.all"></router-outlet>',
  directives: [routerDirectives],
  providers: [],
  exports: [RoutePaths, Routes],
)
class AppComponent {
  final title = 'Nightscout Reporter';
}
