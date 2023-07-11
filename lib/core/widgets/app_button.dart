import 'package:buttons/widgets/buttons/primary_button.dart';
import 'package:buttons/widgets/buttons/secondary_button.dart';
import 'package:buttons/widgets/buttons/transparent_button.dart';
import 'package:flutter/material.dart';

import 'buttons/info_button.dart';

class AppButtonStyle {
  static Widget getPrimaryButton(
      String title, bool isActive, Function() onPress) {
    return PrimaryButton(
      onPress: onPress,
      title: title,
      isActive: isActive,
    );
  }

  static Widget getSecondaryButton(
      String title, bool isActive, Function() onPress) {
    return SecondaryButton(
      onPress: onPress,
      title: title,
      isActive: isActive,
    );
  }

  static Widget getTransparentButton(
      String title, bool isActive, Function() onPress) {
    return TransparentButton(
      onPress: onPress,
      title: title,
      isActive: isActive,
    );
  }

  static Widget getInfoButton(
      String title, String caption, bool isActive, Function() onPress) {
    return InfoButton(
      onPress: onPress,
      title: title,
      isActive: isActive,
      caption: caption,
    );
  }
}
