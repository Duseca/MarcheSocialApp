import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:marche_social_app/constants/app_colors.dart';
import 'package:marche_social_app/constants/app_fonts.dart';

LineChartData sampleData1() {
  final Color gradientColor1 = Color.fromARGB(155, 248, 248, 248);
  final Color gradientColor2 = Color.fromARGB(0, 255, 255, 255);
  return LineChartData(
    gridData: FlGridData(
      show: false, drawVerticalLine: true,
      drawHorizontalLine: true,
      verticalInterval: 1, // Set the interval for vertical lines
      horizontalInterval: 10,
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
    borderData: FlBorderData(show: false),
    lineBarsData: [
      LineChartBarData(
        spots: [
          FlSpot(0, 47), // Change these values accordingly
          FlSpot(1, 55),
          FlSpot(2, 55),
          FlSpot(2.5, 90),
          FlSpot(3, 72),
          FlSpot(4, 72),
          FlSpot(4.5, 85),
          FlSpot(5, 72),
          FlSpot(5.5, 55),
          FlSpot(6, 90),
          FlSpot(7, 90),
          FlSpot(7.4, 100)
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

          gradientFrom: Offset(0, 0), // Set to topCenter
          gradientTo: Offset(0, 1),
        ),

        dotData: FlDotData(show: false), // Hide the dots
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
