import 'package:flutter/material.dart';
import 'package:flutter_core/flutter_core.dart';
import 'package:flutter_dependencies/flutter_dependencies.dart';

/// Button squared with outlined colors, icon, and arrow_right
//TODO: Remove this button...
class OutlinedSquareButton extends StatelessWidget {
  /// Icon on left of button
  final IconData icon;

  /// Centered title
  final String title;

  /// Action on tap
  final VoidCallback? onTap;

  /// Constructor
  const OutlinedSquareButton({
    required this.icon,
    required this.title,
    this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: context.colorScheme.colorPrimarySuperlight,
        border: Border.all(
          color: context.colorScheme.colorPrimaryLight,
          width: 1.responsiveWidth,
        ),
      ),
      constraints: BoxConstraints(
        minHeight: 56.responsiveHeight,
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 11.responsiveHeight),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(width: 18.responsiveWidth),
                Icon(
                  icon,
                  size: 20.responsiveWidth,
                  color: context.colorScheme.colorPrimaryDark,
                ),
                SizedBox(width: 20.responsiveWidth),
                Expanded(
                  child: AutoSizeText(
                    title,
                    style: context.textTheme.button?.copyWith(
                      color: context.colorScheme.colorPrimaryDark,
                    ),
                    maxLines: 1,
                    minFontSize: 1,
                  ),
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 14.responsiveHeight,
                  color: context.colorScheme.colorPrimaryDark,
                ),
                SizedBox(width: 28.responsiveWidth),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
