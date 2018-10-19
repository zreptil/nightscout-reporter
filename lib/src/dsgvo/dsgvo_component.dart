import 'package:angular/angular.dart';
import 'package:nightscout_reporter/src/globals.dart' as globals;

@Component(
  selector: 'dsgvo',
  styleUrls: ['dsgvo_component.css'],
  templateUrl: 'dsgvo_component.html',
  directives: [],
  providers: [],)
class DSGVOComponent
{
  globals.Globals g = globals.Globals();

  DSGVOComponent();
}
