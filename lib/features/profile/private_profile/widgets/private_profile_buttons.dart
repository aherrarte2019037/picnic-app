import 'package:flutter/material.dart';
import 'package:picnic_app/localization/app_localizations_utils.dart';
import 'package:picnic_app/resources/assets.gen.dart';
import 'package:picnic_ui_components/ui/theme/picnic_theme.dart';
import 'package:picnic_ui_components/ui/widgets/picnic_button.dart';

class PrivateProfileButtons extends StatelessWidget {
  const PrivateProfileButtons({
    Key? key,
    required this.onTapEditProfile,
    required this.onTapCreatePosts,
  }) : super(key: key);

  final VoidCallback onTapEditProfile;
  final VoidCallback onTapCreatePosts;

  @override
  Widget build(BuildContext context) {
    final theme = PicnicTheme.of(context);
    final whiteColor = theme.colors.blackAndWhite.shade100;

    return Row(
      children: [
        Flexible(
          child: Padding(
            padding: const EdgeInsets.only(
              left: 24,
              right: 4,
            ),
            child: PicnicButton(
              title: appLocalizations.privateProfileEditButton,
              onTap: onTapEditProfile,
              minWidth: double.infinity,
              icon: Assets.images.edit.path,
              titleColor: whiteColor,
            ),
          ),
        ),
        Flexible(
          child: Padding(
            padding: const EdgeInsets.only(
              right: 24,
              left: 4,
            ),
            child: PicnicButton(
              title: appLocalizations.createPost,
              onTap: onTapCreatePosts,
              minWidth: double.infinity,
              color: theme.colors.pink.shade500,
              icon: Assets.images.plus.path,
              titleColor: whiteColor,
            ),
          ),
        ),
      ],
    );
  }
}
