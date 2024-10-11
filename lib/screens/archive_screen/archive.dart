import 'package:budget_breeze/components/add_cost_button.dart';
import 'package:budget_breeze/components/calender_archive_component.dart';
import 'package:budget_breeze/components/custom_box.dart';
import 'package:budget_breeze/components/pie_chart_widget.dart';
import 'package:budget_breeze/core/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ArchiveScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final DateTime today = DateTime.now();
    final String formattedDate = DateFormat('d/M/y').format(today);

    return Scaffold(
      body: SafeArea(
        child: Stack(children: [
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Ekranın üst kısmında "Para Yönetimi" yazısı
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 50.0),
                child: Center(
                  child: Text(
                    'Para Yönetimi',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Montserrat',
                    ),
                  ),
                ),
              ),
              SizedBox(
                  height: 20), // Başlık ile takvim kutusu arasında boşluk

            

              




              SizedBox(height: 20), // Takvim ile kutular arasında boşluk

              // Gider ve Gelir kutuları
              Row(
                children: [
                  // Gider kutusu
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.0),
                      child: CustomBox(
                        label: 'Gider',
                        isIncome: false,
                        amount: -100.0,
                        color: AppColors.greyColor,
                        // textColor: AppColors.goldColor,
                        textColor: Colors.red,
                      ),
                    ),
                  ),
                  // Gelir kutusu
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.0),
                      child: CustomBox(
                        label: 'Gelir',
                        amount: 100.0,
                        isIncome: true,
                        color: Colors.grey,
                        // textColor: AppColors.goldColor,
                        textColor: Colors.greenAccent,
                        // Metin rengi
                      ),
                    ),
                  ),
                ],
              ),
              Spacer(), // Kalan alanı doldurur

              PieChartWidget(grossAmount: 100),

              SizedBox(
                  height: 150), // Grafik ile alt kenar arasında boşluk
            ],
          ),
          Positioned(
            bottom: 16.0,
            right: 12.0,
            child: AddCostButton(onPressed: () {
              print('selam');
            }),
          )
        ]),
      ),
    );
  }
}
