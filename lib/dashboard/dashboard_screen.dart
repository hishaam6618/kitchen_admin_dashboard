import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widget/menu/home_nav_bar.dart';
import '../responsive.dart';
import 'section/about_products_secion.dart';
import 'section/chart_secion.dart';
import 'section/circular_percent_secion.dart';
import 'section/line_percent_secion.dart';
import '../widget/menu/home_side_bar_menu_section.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Responsive.isDesktop(context)
          ? null
          : AppBar(
              backgroundColor: Colors.grey,
              leading: Builder(
                builder: (context) => IconButton(
                    onPressed: () {
                      Scaffold.of(context).openDrawer();
                    },
                    icon: const Icon(Icons.menu)),
              ),
            ),
      drawer: SideMenuSection(),
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (Responsive.isDesktop(context))
              Expanded(flex: 2, child: SideMenuSection()),
            Expanded(
                flex: 8,
                child: SingleChildScrollView(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        if (Responsive.isDesktop(context))
                          const HomeNavBar(title: "Overview"),
                        Padding(
                          padding:
                              EdgeInsets.only(left: 35.w, right: 5.w), //47*
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  // Chart Secion Cart
                                  ChartSecion(),
                                  SizedBox(height: 20.h),

                                  /// About Products Secion Cart
                                  const AboutProductsSecion()
                                ],
                              ),
                              SizedBox(width: 18.w),
                              if (Responsive.isDesktop(context))
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    /// Circular Percent Secion Cart
                                    const CircularPercentSecion(),
                                    SizedBox(height: 20.h),

                                    /// Line Percent Secion Cart
                                    const LinePercentSecion()
                                  ],
                                ),
                            ],
                          ),
                        ),
                      ]),
                )),
          ],
        ),
      ),
    );
  }
}
