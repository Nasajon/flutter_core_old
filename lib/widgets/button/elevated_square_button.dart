import 'package:flutter/material.dart';
import 'package:flutter_core/flutter_core.dart';
import 'package:flutter_dependencies/flutter_dependencies.dart';

/// Button squared with elevated colors, icon, and arrow_right
//TODO: Remove this button...
class ElevatedSquareButton extends StatelessWidget {
  /// Icon on left of button
  final IconData icon;

  /// Centered title
  final String title;

  /// Action on tap
  final VoidCallback? onTap;

  /// Constructor
  const ElevatedSquareButton({
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
        color: context.colorScheme.colorPrimaryDark,
        border: Border.all(
          color: context.colorScheme.colorPrimaryLight,
          width: 1.responsiveWidth,
        ),
      ),
      height: 56.responsiveHeight,
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(width: 16.responsiveWidth),
              Icon(
                icon,
                size: 24.responsiveWidth,
                color: context.colorScheme.colorPrimarySuperlight,
              ),
              SizedBox(width: 18.responsiveWidth),
              Expanded(
                child: AutoSizeText(
                  title,
                  style: context.textTheme.button,
                  maxLines: 1,
                  minFontSize: 1,
                ),
              ),
              Icon(
                Icons.arrow_forward_ios_sharp,
                size: 12.responsiveHeight,
                color: context.colorScheme.colorPrimarySuperlight,
              ),
              SizedBox(width: 28.responsiveWidth),
            ],
          ),
        ),
      ),
    );
  }
}
