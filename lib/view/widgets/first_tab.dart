import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

class FirstTab extends StatefulWidget {
  const FirstTab({super.key});

  @override
  State<FirstTab> createState() => _FirstTabState();
}

class _FirstTabState extends State<FirstTab> {
  final Map<String, double> dataMap = {
    "Child": 18,
    "Food": 12,
    "Beauty & Care": 17,
    "Education": 53,
  };

  final List<Color> colorList = [
    const Color(0xffFD635B),
    const Color(0xff028154),
    const Color(0xffFEB544),
    const Color(0xff81D3E4),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: PieChart(
          ringStrokeWidth: 70,
          dataMap: dataMap,
          animationDuration: const Duration(milliseconds: 800),
          chartLegendSpacing: 32,
          chartRadius: MediaQuery.of(context).size.width / 2,
          colorList: colorList,
          chartType: ChartType.ring,
          centerText: "12 \nExpenses",
          legendOptions: const LegendOptions(
            legendShape: BoxShape.rectangle,
            showLegendsInRow: false,
            legendPosition: LegendPosition.bottom,
            showLegends: true,
            legendTextStyle: TextStyle(fontSize: 16),
          ),
          chartValuesOptions: const ChartValuesOptions(
            showChartValueBackground: true,
            showChartValues: true,
            showChartValuesInPercentage: true,
            showChartValuesOutside: true,
            decimalPlaces: 1,
          ),
        ),
      ),
    );
  }
}
