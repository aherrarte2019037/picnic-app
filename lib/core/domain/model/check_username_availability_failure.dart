import 'package:picnic_app/core/domain/model/displayable_failure.dart';

class CheckUsernameAvailabilityFailure implements HasDisplayableFailure {
  // ignore: avoid_field_initializers_in_const_classes
  const CheckUsernameAvailabilityFailure.unknown([this.cause]) : type = CheckUsernameAvailabilityFailureType.unknown;

  final CheckUsernameAvailabilityFailureType type;
  final Object? cause;

  @override
  DisplayableFailure displayableFailure() {
    switch (type) {
      case CheckUsernameAvailabilityFailureType.unknown:
        return DisplayableFailure.commonError();
    }
  }

  @override
  String toString() => 'CheckUsernameAvailabilityFailure{type: $type, cause: $cause}';
}

enum CheckUsernameAvailabilityFailureType {
  unknown,
}
