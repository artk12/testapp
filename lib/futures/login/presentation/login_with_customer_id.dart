import 'package:banktestapp/core/widgets/buttons/primary_button.dart';
import 'package:banktestapp/core/widgets/md_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../core/widgets/md_app_bar.dart';

class LoginWithCustomerId extends StatelessWidget {
  const LoginWithCustomerId({super.key});

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
                Expanded(
                  child: ListView(
                    children: [
                      const SizedBox(height: 44),
                      Align(
                        alignment: Alignment.topRight,
                        child: SvgPicture.asset('images/Arrow-Left.svg'),
                      ),
                      const SizedBox(height: 32),
                      const MdTextFormField(
                        labelText: 'شماره مشتری',
                      ),
                      const SizedBox(height: 24),
                      const MdTextFormField(
                        labelText: 'رمز عبور',
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: PrimaryButton(
                    onPress: () {},
                    title: 'تایید',
                    isActive: true,
                  ),
                ),
                const SizedBox(height: 40)
              ],
            ),
          ),
        ),
      ),
    );
  }
}