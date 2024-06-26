import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../responsive.dart';
import '../widget/menu/home_nav_bar.dart';
import 'section/customers_add_update_section.dart';
import 'section/customers_section.dart';

class CustomersScreen extends StatelessWidget {
  const CustomersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (Responsive.isDesktop(context))
            const HomeNavBar(title: "Customers"),
          Padding(
            padding: EdgeInsets.only(left: 35.w, right: 5.w),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /// Customers  Section
                const Expanded(flex: 3, child: CustomersSection()),

                /// Customers Add Update Section
                SizedBox(width: 18.w),
                const Expanded(flex: 1, child: CustomersAddUpdateSection()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
