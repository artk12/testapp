
import 'package:banktestapp/core/utils/extension.dart';
import 'package:banktestapp/core/widgets/buttons/info_button.dart';
import 'package:banktestapp/core/widgets/md_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginTypePage extends StatelessWidget {
  const LoginTypePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MdCustomAppBar(),
      body: Center(
        child: SizedBox(
          width: 500,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const SizedBox(height: 54),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    'یکی از روش های ورود را انتخاب کنید.',
                    style: context.textTheme.subtitle1,
                  ),
                ),
                const SizedBox(height: 24),
                InfoButton(
                  onPress: () {
                    context.go('/input_customer_id');
                  },
                  title: 'اطلاعات همراه بانک',
                  caption: "امکان استفاده از خدمات بانکداری دیجیتال و شعب",
                  isActive: true,
                ),
                const SizedBox(height: 14),
                InfoButton(
                  onPress: () {},
                  title: 'شماره موبایل و کد ملی',
                  caption: "امکان استفاده از خدمات بانکت",
                  isActive: true,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}