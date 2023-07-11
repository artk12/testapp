import 'package:flutter/material.dart';

class TransparentButton extends StatelessWidget {
  final String title;
  final Function() onPress;
  final bool isActive;
  const TransparentButton(
      {super.key,
      required this.onPress,
      required this.title,
      required this.isActive});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: ElevatedButton(
        style: ButtonStyle(
          elevation: const MaterialStatePropertyAll<double>(0),
          backgroundColor:
              const MaterialStatePropertyAll<Color>(Colors.transparent),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
          ),
        ),
        onPressed: onPress,
        child: Text(
          title,
          style: Theme.of(context)
              .textTheme
              .bodyMedium!
              .copyWith(color: isActive ? const Color(0xff172B4D) :
          const Color(0x4f091e42)),
        ),
      ),
    );
  }
}
