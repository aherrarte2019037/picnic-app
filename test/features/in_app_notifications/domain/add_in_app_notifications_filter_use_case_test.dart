import 'package:flutter_test/flutter_test.dart';
import 'package:picnic_app/dependency_injection/app_component.dart';
import 'package:picnic_app/features/in_app_events/domain/use_cases/add_in_app_notifications_filter_use_case.dart';

import '../../chat/mocks/chat_mocks.dart';

void main() {
  late AddInAppNotificationsFilterUseCase useCase;

  setUp(() {
    useCase = AddInAppNotificationsFilterUseCase(ChatMocks.chatLiveMessagesRepository);
  });

  test(
    'use case executes normally',
    () async {
      // GIVEN

      // WHEN
      useCase.execute((notification) {
        return false;
      });
    },
  );

  test("getIt resolves successfully", () async {
    final useCase = getIt<AddInAppNotificationsFilterUseCase>();
    expect(useCase, isNotNull);
  });
}
