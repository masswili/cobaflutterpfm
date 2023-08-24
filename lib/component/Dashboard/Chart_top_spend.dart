import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

import '../../constants.dart';
import '../../model/data.dart';

class SpendBox extends StatefulWidget {
  const SpendBox({Key? key}) : super(key: key);

  @override
  State<SpendBox> createState() => _SpendBoxState();

  static List<charts.Series<BarMmodel, String>> _createSampleData() {
    final data = [
      BarMmodel("2016", 20),
      BarMmodel("2017", 23),
      BarMmodel("2018", 29),
      BarMmodel("2019", 30),
      BarMmodel("2020", 29),
      BarMmodel("2021", 23),
    ];
    return [
      charts.Series<BarMmodel, String>(
        data: data,
        id: 'sales',
        colorFn: (_, __) => charts.MaterialPalette.red.shadeDefault,
        domainFn: (BarMmodel barModeel, _) => barModeel.year,
        measureFn: (BarMmodel barModeel, _) => barModeel.value,
      )
    ];
  }
}

class _SpendBoxState extends State<SpendBox> {
  int selectedValue = -1; // Inisialisasi dengan nilai default

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 5,
      child: Container(
        decoration: BoxDecoration(
          color: BasePalette.menuBluebird,
          borderRadius: BorderRadius.circular(5),
        ),
        height: 250,
        margin: const EdgeInsets.all(8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Center(
                child: Row(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Top Spend',
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: Center(
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        height: 300,
                        child: charts.BarChart(
                          SpendBox._createSampleData(),
                          animate: true,
                          // Konfigurasi sumbu vertikal (primaryMeasureAxis)
                          primaryMeasureAxis: const charts.NumericAxisSpec(
                            tickProviderSpec:
                                charts.BasicNumericTickProviderSpec(
                              // Atur rentang minimum dan maksimum sesuai dengan data Anda
                              dataIsInWholeNumbers:
                                  true, // Jika data dalam bilangan bulat
                              desiredMinTickCount: 5, // Jumlah tanda minimum
                              desiredMaxTickCount: 10, // Jumlah tanda maksimum
                            ),
                            // Konfigurasi gridline untuk sumbu vertikal
                            renderSpec: charts.GridlineRendererSpec(
                              labelJustification:
                                  charts.TickLabelJustification.inside,
                              labelAnchor: charts.TickLabelAnchor.centered,
                            ),
                          ),
                          // Tambahkan konfigurasi seleksi
                          selectionModels: [
                            charts.SelectionModelConfig(
                              type: charts.SelectionModelType.info,
                              changedListener: (model) {
                                if (model.hasDatumSelection) {
                                  final selectedValueDouble =
                                      model.selectedSeries[0].measureFn(model
                                          .selectedDatum[0]
                                          .index); // Ambil nilai dari batang yang dipilih
                                  if (selectedValueDouble != null) {
                                    setState(() {
                                      selectedValue = selectedValueDouble
                                          .toInt(); // Ubah menjadi integer
                                    });
                                  }
                                }
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                    // Tampilkan nilai yang dipilih di atas grafik
                    if (selectedValue >= 0)
                      Positioned(
                        top: -9, // Geser ke atas grafik
                        left: 16,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.lightBlueAccent,
                            borderRadius: BorderRadius.circular(4),
                          ),
                          padding: const EdgeInsets.all(8),
                          child: Text(
                            'Value: $selectedValue',
                            style: const TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
