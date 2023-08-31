import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class BarMmodel {
  final String year;
  final int value;
  final charts.Color color;

  BarMmodel(this.year, this.value, this.color);
}

class SpendBox extends StatefulWidget {
  const SpendBox({Key? key}) : super(key: key);

  @override
  State<SpendBox> createState() => _SpendBoxState();

  static List<charts.Series<BarMmodel, String>> _createSampleData() {
    final data = [
      BarMmodel("Iss Ashmore", 20, charts.Color.fromHex(code: '#FF0000')),
      BarMmodel("Iss Ashless", 23, charts.Color.fromHex(code: '#0000FF')),
      BarMmodel("Iss Ashshow", 29, charts.Color.fromHex(code: '#00FF00')),
      BarMmodel("Iss Ashmwdq", 30, charts.Color.fromHex(code: '#FFA500')),
      BarMmodel("Iss Ashmsda", 29, charts.Color.fromHex(code: '#800080')),
    ];

    return [
      charts.Series<BarMmodel, String>(
        data: data,
        colorFn: (BarMmodel barModel, _) => barModel.color,
        domainFn: (BarMmodel barModel, _) => barModel.year,
        measureFn: (BarMmodel barModel, _) => barModel.value,
        id: 'Value',
        displayName: 'Value',
      )
    ];
  }
}

class _SpendBoxState extends State<SpendBox> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 5,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.blue,
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
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: Center(
                child: SizedBox(
                  height: 200,
                  width: 300,
                  child: charts.BarChart(
                    SpendBox._createSampleData(),
                    animate: true,
                    domainAxis: const charts.OrdinalAxisSpec(
                      renderSpec: charts.SmallTickRendererSpec(
                        labelStyle: charts.TextStyleSpec(
                          fontSize: 10,
                          color: charts.MaterialPalette.black,
                        ),
                        labelRotation: 45,
                      ),
                    ),
                    primaryMeasureAxis: const charts.NumericAxisSpec(
                      tickProviderSpec: charts.BasicNumericTickProviderSpec(
                        dataIsInWholeNumbers: true,
                        desiredMinTickCount: 5,
                        desiredMaxTickCount: 10,
                      ),
                      renderSpec: charts.GridlineRendererSpec(
                        labelJustification:
                            charts.TickLabelJustification.inside,
                        labelAnchor: charts.TickLabelAnchor.centered,
                      ),
                    ),
                    customSeriesRenderers: [
                      charts.BarRendererConfig(
                        groupingType: charts.BarGroupingType.stacked,
                        strokeWidthPx: 1.0,
                      ),
                    ],
                    behaviors: [
                      charts.ChartTitle(
                        '',
                        behaviorPosition: charts.BehaviorPosition.top,
                        titleOutsideJustification:
                            charts.OutsideJustification.middleDrawArea,
                      ),
                    ],
                    // Menambahkan interaksi dengan grafik
                    selectionModels: [
                      charts.SelectionModelConfig(
                        type: charts.SelectionModelType.info,
                        changedListener: _onSelectionChanged,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _onSelectionChanged(charts.SelectionModel model) {
    final selectedDatum = model.selectedDatum;

    if (selectedDatum.isNotEmpty) {
      final value = selectedDatum.first.datum.value;

      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Value'),
            content: Text('Value: $value'),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('OK'),
              ),
            ],
          );
        },
      );
    }
  }
}

void main() {
  runApp(const MaterialApp(
    home: Scaffold(
      body: SpendBox(),
    ),
  ));
}
