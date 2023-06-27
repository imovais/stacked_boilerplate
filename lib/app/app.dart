

import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_manually_prac/Services/counter_service.dart';
import 'package:stacked_manually_prac/Views/HomePage/homepage_view.dart';
import 'package:stacked_services/stacked_services.dart';

import '../Views/LoginPage/loginpage_view.dart';

@StackedApp(routes: [
  MaterialRoute(page: HomePageView, initial: true),
  MaterialRoute(page: LoginPageView,),
], dependencies: [
  Singleton(classType: NavigationService),
  LazySingleton(classType: CounterService)
])

class App{}