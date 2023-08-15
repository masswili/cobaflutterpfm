import 'package:flutter/material.dart';

import '../constants.dart';

/// * This is a sample button I have created for my view. You can modify your button and make a consistent UI.
/// onClick - Button click
/// text - Button text
/// textColor - Button textColor
/// color - Button Background color
/// splashColor - Color displayed when the button is touched
/// borderRadius - Button border radius
/// minWidth - Minimum width of a button
/// height - Button height
/// borderSideColor - Border Color
/// style - Button textstyle
/// leadingIcon - If you want to display an icon before button text
/// trailingIcon - If you want to display an icon after button text
ButtonTheme raisedButton(
    {required VoidCallback onClick,
    required String text,
    required Color textColor,
    required Color color,
    required Color splashColor,
    required double borderRadius,
    required double minWidth,
    required double height,
    required Color borderSideColor,
    required TextStyle style,
    required Widget leadingIcon,
    required Widget trailingIcon}) {
  return ButtonTheme(
    minWidth: minWidth,
    height: height,
    child: MaterialButton(
        splashColor: Colors.grey.withOpacity(0.5),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius = 15),
            side: BorderSide(color: borderSideColor)),
        textColor: BasePalette.bg,
        color: BasePalette.primary,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          // This is must when you are using Row widget inside Raised Button
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _buildLeadingIcon(leadingIcon),
            Text(
              text = '',
              style: TextStyle(
                color: BasePalette.bg,
                fontSize: 14.0,
                fontWeight: FontWeight.w500,
                fontFamily: "NeoSans",
                letterSpacing: 1.2,
              ),
            ),
            _buildTrailingIcon(trailingIcon),
          ],
        ),
        onPressed: () {
          return onClick();
        }),
  );
}

Widget _buildLeadingIcon(Widget leadingIcon) {
  return Row(
    children: <Widget>[leadingIcon, SizedBox(width: 10)],
  );
}

Widget _buildTrailingIcon(Widget trailingIcon) {
  return Row(
    children: <Widget>[
      SizedBox(width: 10),
      trailingIcon,
    ],
  );
}
