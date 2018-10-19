import 'package:angular/angular.dart';
import 'package:nightscout_reporter/src/globals.dart' as globals;

@Component(
  selector: 'impressum',
  styleUrls: ['impressum_component.css'],
  templateUrl: 'impressum_component.html',
  directives: [],
  providers: [],)
class ImpressumComponent
{
  globals.Globals g = globals.Globals();

  ImpressumComponent();
}
