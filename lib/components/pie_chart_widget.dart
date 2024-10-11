import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class PieChartWidget extends StatelessWidget {
  final int grossAmount;

  const PieChartWidget({Key? key, required this.grossAmount}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        alignment: Alignment.center,
        children: [
          SizedBox(
            height: 200, // Boyutunu istediğiniz gibi ayarlayın
            width: 200,
            child: PieChart(PieChartData(
              sections: [
                PieChartSectionData(
                  value: 70,
                  color: Colors.blueAccent,
                  radius: 50,
                  title: '',
                ),
                PieChartSectionData(
                  value: 30,
                  color: Colors.grey[300],
                  radius: 50,
                  title: '',
                ),
              ],
              centerSpaceRadius: 80,  // Ortadaki boşluğu ayarlayın
            )),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Bütün Para',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                '₺$grossAmount',
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.amber,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
