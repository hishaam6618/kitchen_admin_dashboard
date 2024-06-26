import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kitchen_admin_dashboard/widget/menu/home_nav_bar.dart';

import 'app_color.dart';
import 'page_controller.dart';
import 'responsive.dart';
import 'widget/menu/home_side_bar_menu_section.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(PagesController());
    return Scaffold(
        appBar: Responsive.isDesktop(context)
            ? null
            : AppBar(
                backgroundColor: AppColor.backgroundColor,
                title: const HomeNavBar(title: ""),
              ),
        drawer: const SideMenuSection(),
        body: SafeArea(
          child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            if (Responsive.isDesktop(context))
              const Expanded(flex: 2, child: SideMenuSection()),
            GetBuilder<PagesController>(
                builder: (controller) => Expanded(
                    flex: 8, child: controller.screen[controller.pageNum]))
          ]),
        ));
  }
}
