import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:intl/intl.dart';
import 'package:watree/config/config.dart';
import 'package:watree/data/models.dart';
import 'package:watree/widgets/widgets.dart';

class ChartCard extends HookWidget {
  ChartCard({
    required this.title,
    required this.minY,
    required this.maxY,
    required List<DataPoint> points,
    required this.horizontalInterval,
    required this.color,
    this.animate = true,
    Key? key,
  })  : _points = points.where((e) => e.y != -100.0).toList(),
        super(key: key);

  final String title;
  final double minY;
  final double maxY;
  final List<DataPoint> _points;
  final double horizontalInterval;
  final Color color;
  final bool animate;

  SideTitles get leftTitles => SideTitles(
        showTitles: true,
        reservedSize: 24,
        interval: horizontalInterval,
        getTitlesWidget: leftTitleWidgets,
      );

  Widget leftTitleWidgets(double value, TitleMeta meta) {
    if (value < maxY && value > minY) {
      return WTText(
        value.toStringAsFixed(0),
        fontWeight: FontWeight.w500,
      );
    }
    return const SizedBox.shrink();
  }

  SideTitles get bottomTitles => SideTitles(
        showTitles: true,
        reservedSize: 32,
        interval: 1,
        getTitlesWidget: bottomTitleWidgets,
      );

  Widget bottomTitleWidgets(double value, TitleMeta meta) {
    final today = DateTime.now();
    final format = DateFormat('EEE');
    final String text;
    if (value < 1 || value > 7) {
      return const SizedBox.shrink();
    }
    switch (value.ceil()) {
      case 7:
        text = format.format(today);
        break;
      case 6:
        text = format.format(today.subtract(const Duration(days: 1)));
        break;
      case 5:
        text = format.format(today.subtract(const Duration(days: 2)));
        break;
      case 4:
        text = format.format(today.subtract(const Duration(days: 3)));
        break;
      case 3:
        text = format.format(today.subtract(const Duration(days: 4)));
        break;
      case 2:
        text = format.format(today.subtract(const Duration(days: 5)));
        break;
      case 1:
        text = format.format(today.subtract(const Duration(days: 6)));
        break;
      default:
        text = '';
        break;
    }

    return Padding(
      padding: const EdgeInsets.only(top: 14.0),
      child: WTText(
        text,
        fontWeight: FontWeight.w600,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final opacity = useState(animate ? 0.0 : 1.0);
    useEffect(
      () {
        Future.delayed(
          const Duration(milliseconds: 200),
          () {
            opacity.value = 1.0;
          },
        );
        return;
      },
      [],
    );

    return Material(
      elevation: 8,
      borderRadius: BorderRadius.circular(18),
      child: Container(
        width: double.maxFinite,
        height: 250,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: WTColor.white,
        ),
        child: AnimatedOpacity(
          opacity: opacity.value,
          duration: const Duration(milliseconds: 200),
          curve: Curves.easeOut,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: WTText(
                    title,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: WTColor.black,
                  ),
                ),
                const SizedBox(height: 14),
                Expanded(
                  child: LineChart(
                    LineChartData(
                      minX: 0.5,
                      maxX: 7.5,
                      minY: minY,
                      maxY: maxY,
                      titlesData: FlTitlesData(
                        bottomTitles: AxisTitles(
                          sideTitles: bottomTitles,
                        ),
                        leftTitles: AxisTitles(
                          sideTitles: leftTitles,
                        ),
                        rightTitles: AxisTitles(),
                        topTitles: AxisTitles(),
                      ),
                      borderData: FlBorderData(
                        show: false,
                      ),
                      gridData: FlGridData(
                        drawVerticalLine: false,
                        checkToShowHorizontalLine: (_) => true,
                        horizontalInterval: horizontalInterval,
                      ),
                      lineTouchData: LineTouchData(
                        enabled: false,
                      ),
                      lineBarsData: [
                        LineChartBarData(
                          isStrokeCapRound: true,
                          barWidth: 4,
                          color: color,
                          isCurved: true,
                          curveSmoothness: 0.2,
                          dotData: FlDotData(show: false),
                          spots: _points.map((e) => FlSpot(e.x, e.y)).toList(),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
