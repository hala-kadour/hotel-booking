import 'package:flutter/material.dart';

import '../../config/theme/app_colors.dart';

class MainScaffold extends StatelessWidget {
  const MainScaffold({
    super.key,
    this.appBar,
    this.body,
    this.bottomNavigationBar,
  });
  final PreferredSizeWidget? appBar;
  final Widget? bottomNavigationBar;
  final Widget? body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      bottomNavigationBar: bottomNavigationBar,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(gradient: AppColors.scaffoldLinear),
        child: body,
      ),
    );
  }
}
