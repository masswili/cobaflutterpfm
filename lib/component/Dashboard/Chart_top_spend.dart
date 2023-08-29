import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class BarMmodel {
  final String year;
  final int value;
  final charts.Color color; // Use charts.Color

  BarMmodel(this.year, this.value, this.color);
}

class SpendBox extends StatefulWidget {
  const SpendBox({Key? key}) : super(key: key);

  @override
  State<SpendBox> createState() => _SpendBoxState();

  static List<charts.Series<BarMmodel, String>> _createSampleData() {
    final data = [
      BarMmodel(
          "2016", 20, charts.Color.fromHex(code: '#FF0000')), // Example color
      BarMmodel("2017", 23, charts.Color.fromHex(code: '#0000FF')),
      BarMmodel("2018", 29, charts.Color.fromHex(code: '#00FF00')),
      BarMmodel("2019", 30, charts.Color.fromHex(code: '#FFA500')),
      BarMmodel("2020", 29, charts.Color.fromHex(code: '#800080')),
      BarMmodel("2021", 23, charts.Color.fromHex(code: '#FFFF00')),
    ];
    return [
      charts.Series<BarMmodel, String>(
        data: data,
        id: 'sales',
        colorFn: (BarMmodel barModel, _) => barModel.color,
        domainFn: (BarMmodel barModel, _) => barModel.year,
        measureFn: (BarMmodel barModel, _) => barModel.value,
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
          color: Colors.blue, // Change to the desired background color
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
                  width: 400,
                  child: charts.BarChart(
                    SpendBox._createSampleData(),
                    animate: true,
                    domainAxis: const charts.OrdinalAxisSpec(
                      renderSpec: charts.SmallTickRendererSpec(
                        labelRotation: 45,
                      ),
                    ),
                    behaviors: [
                      charts.LinePointHighlighter(
                        symbolRenderer: CustomSymbolRenderer(),
                      ),
                    ],
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
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomSymbolRenderer extends charts.CustomSymbolRenderer {
  Widget buildResult(BuildContext context,
      {List<charts.SeriesDatum<dynamic>>? seriesDatum,
      int? datumIndex,
      bool? isSelection}) {
    // final color = seriesDatum![0].series.colorFn!(
    //   seriesDatum[0].datum as int?,
    // ); // Get the color from series

    return Column(
      children: [
        const Icon(
          Icons.circle,
          size: 50.0,
          color: Colors.black,
        ),
        Text(
          (seriesDatum?[0].datum as BarMmodel).value.toString(),
          style: TextStyle(
            color: Colors.blue,
            fontWeight: isSelection != null && isSelection
                ? FontWeight.bold
                : FontWeight.normal,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context,
      {Color? color, required Size size, bool enabled = true}) {
    throw UnimplementedError();
  }
}

void main() {
  runApp(const MaterialApp(
    home: Scaffold(
      body: SpendBox(),
    ),
  ));
}
