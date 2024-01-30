import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:marche_social_app/constants/app_colors.dart';
import 'package:marche_social_app/constants/app_fonts.dart';

LineChartData sampleData1() {
  final Color gradientColor1 = Color.fromARGB(155, 248, 248, 248);
  final Color gradientColor2 = Color.fromARGB(0, 255, 255, 255);
  return LineChartData(
    gridData: FlGridData(
      show: true,
      drawHorizontalLine: true,
      horizontalInterval: 12, // Determines the spacing of the horizontal lines
      getDrawingHorizontalLine: (value) {
        // This function returns the style for drawing the horizontal lines
        return FlLine(
          color: kGrey1Color, // Set the color for the horizontal lines
          strokeWidth: 1,
        );
      },
    ),
    titlesData: FlTitlesData(
      leftTitles: SideTitles(
        getTextStyles: myCustomTextStyle,
        showTitles: true,
        getTitles: (value) {
          if (value % 5 == 0) {
            int steps = (value / 5).toInt() * 5;
            return '$steps ';
          }
          return '';
        },
        margin: 20,
      ),
      bottomTitles: SideTitles(
        getTextStyles: myCustomTextStyle,
        showTitles: true,
        getTitles: (value) {
          return value.toString();
        },
      ),
    ),
    borderData: FlBorderData(
      show: true, // This should be true to show the border lines
      border: Border(
        bottom: BorderSide(
          color: kGrey1Color,
          width: 1,
        ),
        left: BorderSide(
          color: Colors
              .transparent, // Set left border to transparent if not needed
        ),
        right: BorderSide(
          color: Colors.transparent,
        ),
        top: BorderSide(
          color: Colors.transparent,
        ),
      ),
    ),
    lineBarsData: [
      LineChartBarData(
        spots: [
          FlSpot(0, 47),
          FlSpot(1, 55),
          FlSpot(2, 55),
          FlSpot(2.5, 90),
          FlSpot(3, 72),
          FlSpot(4, 72),
          FlSpot(4.5, 85),
          FlSpot(5, 72),
          FlSpot(5.5, 55),
          FlSpot(6, 75),
          FlSpot(7, 75),
          FlSpot(7.4, 75),
          FlSpot(7.8, 75),
          FlSpot(8, 75),
          FlSpot(8.7, 75),
        ],
        preventCurveOverShooting: true,
        preventCurveOvershootingThreshold: -10,
        isCurved: true,
        colors: [kWhiteColor],
        show: true,
        belowBarData: BarAreaData(
          show: true,
          colors: [
            gradientColor1,
            gradientColor2,
          ],
          gradientFrom: Offset(0, 0),
          gradientTo: Offset(0, 1),
        ),
        dotData: FlDotData(show: false),
      ),
    ],
  );
}

// Your custom text style function

TextStyle? myCustomTextStyle(BuildContext context, double textSize) {
  return TextStyle(
      fontSize: 10,
      fontWeight: FontWeight.bold,
      color: kWhiteColor,
      fontFamily: AppFonts.OUTFit_DISPLAY);
}
