import 'package:flutter/material.dart';
import 'package:mak_scholar1/app_screens/application_screen_1.dart';
import 'package:mak_scholar1/app_screens/application_screen_2.dart';
import 'package:mak_scholar1/app_screens/application_screen_3.dart';
import 'package:mak_scholar1/app_screens/home_screen_container.dart';
import 'package:mak_scholar1/app_screens/pay_screen.dart';
import 'package:mak_scholar1/app_screens/terms_and_conditions_screen.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Navigator(
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(
            settings: settings,
            builder: (BuildContext context) {
              switch (settings.name) {
                case '/':
                  return HomeScreenContainer();
                case '/PayScreen':
                  return PayScreen();
                case '/Application1':
                  return ApplicationScreen1();
                case '/Application2':
                  return ApplicationScreen2();
                case '/Application3':
                  return ApplicationScreen3();
              }
              throw AssertionError("Unexpected state: Widget not returned");
            });
      },
    );
  }
}
