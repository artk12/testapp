import 'package:banktestapp/core/utils/extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MdCustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MdCustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        bottomLeft: Radius.circular(56),
        bottomRight: Radius.circular(56),
      ),
      child: AppBar(
        toolbarHeight: 250,
        leading: const SizedBox.shrink(),
        title: Column(
          children: [
            SvgPicture.asset('assets/Frame.svg'),
            const SizedBox(height: 12),
            ShaderMask(
              shaderCallback: (bounds) => const LinearGradient(
                colors: <Color>[
                  Color(0xFF00B5E8),
                  Color(0xFF0052CC),
                ],
              ).createShader(
                Rect.fromLTWH(0, 0, bounds.width, bounds.height),
              ),
              child: const Text(
                'بانکت',
                style: TextStyle(
                  fontSize: 28,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const SizedBox(height: 12),
            Text(
              'سوپر اپلیکیشن بانک خاورمیانه',
              style: context.textTheme.bodyLarge!.copyWith(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(250);
}
