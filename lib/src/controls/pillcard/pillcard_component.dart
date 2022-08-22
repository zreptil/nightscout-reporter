import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import 'package:nightscout_reporter/src/globals.dart';

@Component(
    selector: 'app-pillcard',
    styleUrls: [
      'pillcard_component.css',
      'package:angular_components/css/mdc_web/card/mdc-card.scss.css',
    ],
    templateUrl: 'pillcard_component.html',
    directives: [
      MaterialDialogComponent,
      MaterialButtonComponent,
      MaterialFabComponent,
      MaterialIconComponent,
      NgStyle,
      NgClass,
      NgFor,
      NgIf
    ],
    providers: [])
class PillcardComponent {
  @Input()
  PillData pill;

  @Input()
  String listMode;

  PillcardComponent();
}
