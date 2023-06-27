import 'package:stacked/stacked.dart';
import 'package:stacked_manually_prac/Services/counter_service.dart';
import 'package:stacked_manually_prac/app/app.locator.dart';
import 'package:stacked_manually_prac/app/app.router.dart';
import 'package:stacked_services/stacked_services.dart';

class LoginPageViewModel extends BaseViewModel {
  CounterService counterService = locator<CounterService>();
  NavigationService navigationService = locator<NavigationService>();

  getCountValue() => counterService.count;


}
