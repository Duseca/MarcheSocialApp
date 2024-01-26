import 'package:flutter/material.dart';
import 'package:marche_social_app/constants/app_colors.dart';

BoxDecoration circle(Color color, Color? borderColor) {
  return BoxDecoration(
      shape: BoxShape.circle,
      color: color,
      border: Border.all(color: borderColor ?? Colors.transparent));
}

BoxDecoration rounded(Color color) {
  return BoxDecoration(
    borderRadius: BorderRadius.circular(15),
    color: color,
    boxShadow: [
      BoxShadow(
        color: KTertiaryColor.withOpacity(0.2),
        blurRadius: 5,
        offset: Offset(2, 2), // Shadow position
      ),
    ],
  );
}

BoxDecoration roundedsr(Color color, double radius) {
  return BoxDecoration(
    borderRadius: BorderRadius.circular(radius),
    color: color,
    boxShadow: [
      BoxShadow(
        color: KTertiaryColor.withOpacity(0.2),
        blurRadius: 5,
        offset: Offset(2, 2), // Shadow position
      ),
    ],
  );
}

BoxDecoration rounded2(Color color) {
  return BoxDecoration(
    borderRadius: BorderRadius.circular(15),
    color: color,
  );
}

BoxDecoration roundedr(Color color, double radius) {
  return BoxDecoration(
    borderRadius: BorderRadius.circular(radius),
    color: color,
  );
}

BoxDecoration rounded3(Color color, Color color2) {
  return BoxDecoration(
    borderRadius: BorderRadius.circular(15),
    border: Border.all(color: color2, width: 1.5),
    color: color,
  );
}
