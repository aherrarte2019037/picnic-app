import 'package:equatable/equatable.dart';
import 'package:picnic_app/core/domain/model/notifications/notification_type.dart';
import 'package:picnic_app/features/chat/domain/model/id.dart';
import 'package:picnic_app/features/deeplink_handler/domain/model/deep_link.dart';
import 'package:picnic_app/features/profile/domain/model/profile_notifications/profile_notification.dart';

//ignore: missing_empty_constructor
class ProfileNotificationUnbannedFromApp extends Equatable implements ProfileNotification {
  const ProfileNotificationUnbannedFromApp({
    required this.id,
    required this.userAvatar,
    required this.name,
    required this.userId,
  });

  @override
  final Id id;
  @override
  final String userAvatar;
  @override
  final String name;
  @override
  final Id userId;
  @override
  NotificationType get type => NotificationType.unbannedFromApp;

  @override
  List<Object?> get props => [
        id,
        userAvatar,
        name,
        userId,
      ];

  ProfileNotificationUnbannedFromApp copyWith({
    Id? id,
    String? userAvatar,
    String? name,
    Id? userId,
  }) {
    return ProfileNotificationUnbannedFromApp(
      id: id ?? this.id,
      userAvatar: userAvatar ?? this.userAvatar,
      name: name ?? this.name,
      userId: userId ?? this.userId,
    );
  }

  @override
  DeepLink toDeepLink() => DeepLink.general();
}
