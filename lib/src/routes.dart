import 'package:angular_router/angular_router.dart';

import 'route_paths.dart';
import 'start_component.template.dart' as start_template;
import 'clock/clock_component.template.dart' as clock_template;

export 'route_paths.dart';

class Routes {
  static final start = RouteDefinition(
      routePath: RoutePaths.start,
      component: start_template.StartComponentNgFactory,
      useAsDefault: true);
  static final clock = RouteDefinition(
      routePath: RoutePaths.clock,
      component: clock_template.ClockComponentNgFactory);
  static final root = RouteDefinition.redirect(
    path: '',
    redirectTo: RoutePaths.start.toUrl(),
  );

  static final all = <RouteDefinition>[start, clock, root];

  static final startRoute = <RouteDefinition>[start];
}
