import 'package:banktestapp/core/widgets/buttons/primary_button.dart';
import 'package:banktestapp/core/widgets/md_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
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
                  flex: 2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // const SizedBox(height: 44),
                      GestureDetector(
                        onTap: (){
                          context.go('/');
                        },
                        child: Align(
                          alignment: Alignment.topRight,
                          child: SvgPicture.asset('assets/Arrow-Left.svg'),
                        ),
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
                Expanded(
                  flex: 1,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: double.infinity,
                        child: PrimaryButton(
                          onPress: () {
                            context.go('/input_customer_id/sms_code');
                          },
                          title: 'تایید',
                          isActive: true,
                        ),
                      ),
                    ],
                  ),
                ),
                // const SizedBox(height: 40)
              ],
            ),
          ),
        ),
      ),
    );
  }
}