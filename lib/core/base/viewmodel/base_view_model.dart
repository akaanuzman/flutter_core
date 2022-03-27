import 'package:flutter/material.dart';

import '../../components/alert/failed_alert.dart';
import '../../components/text/primary_color_text.dart';
import '../../extensions/app_extensions.dart';
import '../../init/network/network_manager.dart';
import '../../utils/app_validators.dart';

abstract class BaseViewModel extends ChangeNotifier {
  late BuildContext context;

  NetworkManager get networkManager => NetworkManager.instance;
  AppValidators get appValidator => AppValidators.instance;

  void setState() {
    notifyListeners();
  }

  void setContext(BuildContext context) {
    this.context = context;
  }

  void init() {}

  void showAlertDialog(
    BuildContext context,
    String content,
    void Function()? onTap,
    Widget? child,
  ) {
    showDialog(
      context: context,
      builder: (context) => FailedAlert(
        context: context,
        content: content,
        onTap: onTap,
        child: child,
      ),
    );
  }

  SnackBar defaultSnackbar(String content) => SnackBar(
        content: PurpleBoldText(data: content, context: context),
        //TODO: add custom color
        // backgroundColor: context.blueChalk,
        duration: context.durationSlow,
      );
}
