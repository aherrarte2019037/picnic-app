import 'package:flutter/material.dart';
import 'package:picnic_app/dependency_injection/app_component.dart';
import 'package:picnic_app/features/onboarding/username_form/username_form_initial_params.dart';
import 'package:picnic_app/features/onboarding/username_form/username_form_page.dart';
import 'package:picnic_app/navigation/app_navigator.dart';
import 'package:picnic_app/navigation/no_routes.dart';
import 'package:picnic_app/navigation/transitions/sliding_page_transition.dart';

class UsernameFormNavigator with NoRoutes {
  UsernameFormNavigator(this.appNavigator);

  @override
  final AppNavigator appNavigator;
}

mixin UsernameFormRoute {
  Future<void> openUsernameForm(
    // OnboardingNestedNavigator nestedNavigator,
    UsernameFormInitialParams initialParams,
  ) async {
    return appNavigator.push(
      SlidingPageTransition(
        getIt<UsernameFormPage>(param1: initialParams),
      ),
      context: context,
    );
  }

  AppNavigator get appNavigator;

  BuildContext? get context;
}
