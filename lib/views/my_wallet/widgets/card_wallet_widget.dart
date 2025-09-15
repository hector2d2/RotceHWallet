import 'package:flutter/material.dart';

class CardWalletWidget extends StatelessWidget {
  const CardWalletWidget({
    super.key,
    this.widthSizeCard,
    this.heightSizeCard,
    required this.titleText,
    required this.subTitleText,
    required this.subTitleTextStyle,
    this.icon,
    this.onTap,
  });

  final double? widthSizeCard;
  final double? heightSizeCard;
  final String titleText;
  final String subTitleText;
  final TextStyle subTitleTextStyle;
  final Widget? icon;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        margin: EdgeInsets.only(
          top: 10,
        ),
        child: SizedBox(
          width: widthSizeCard,
          height: heightSizeCard,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                if (icon != null) icon!,
                Text(
                  titleText,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                Divider(
                  height: 2,
                ),
                Text(
                  subTitleText,
                  style: subTitleTextStyle,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
