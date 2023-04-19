import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';

class StatisticScreen extends StatefulWidget {
  const StatisticScreen({Key? key}) : super(key: key);

  @override
  State<StatisticScreen> createState() => _StatisticScreenState();
}

class _StatisticScreenState extends State<StatisticScreen> {
  late String valueChoose;
  List<SalesData> data = [
    SalesData('Jan', 10),
    SalesData('Feb', 20),
    SalesData('Mar', 25),
    SalesData('Apr', 20),
    SalesData('Jun', 26),
    SalesData('July', 23)
  ];

  @override
  List<String> listItems = <String>[
    'Month',
    'January',
    'Febraury',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'October',
    'November',
    'December'
  ];
  String dropdownValue = 'Month';

  @override
  Widget build(BuildContext context) {
    String valueChoose;
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          surfaceTintColor: Colors.white,
          shadowColor: Colors.white,
          centerTitle: true,
          title: const Text(
            'Statistic',
            style: TextStyle(fontWeight: FontWeight.w500),
          ),
          backgroundColor: Colors.white,
        ),
        body: SingleChildScrollView(
            child: Column(children: [
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 13, top: 11),
              child: Text(
                'Total Balance',
                style: TextStyle(color: Colors.grey[700]),
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          const Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 13),
              child: Text(
                '\$21,350.54',
                style: TextStyle(fontSize: 23, fontWeight: FontWeight.w500),
              ),
            ),
          ),
          const SizedBox(
            height: 18,
          ),
          Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 15, left: 13),
                child: Row(
                  children: [
                    const Text(
                      'Overview',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      width: 140,
                    ),
                    Container(
                      height: 30,
                      padding: EdgeInsets.only(
                        left: 0,
                        bottom: 0,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        border: Border.all(
                            color: Colors.grey,
                            style: BorderStyle.solid,
                            width: 0.6),
                      ),
                      child: DropdownButtonHideUnderline(
                        child: ButtonTheme(
                          child: DropdownButton<String>(
                            alignment: Alignment.topCenter,
                            isDense: true,
                            isExpanded: false,
                            icon: Icon(Icons.keyboard_arrow_down_outlined),
                            menuMaxHeight: 200,
                            value: dropdownValue,
                            hint: const Text('Month'),
                            onChanged: (String? newValue) {
                              setState(() {
                                dropdownValue = newValue!;
                              });
                            },
                            items: listItems.map<DropdownMenuItem<String>>(
                              (String value) {
                                return DropdownMenuItem<String>(
                                    value: value, child: Text(value));
                              },
                            ).toList(),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )),
          Padding(
            padding: const EdgeInsets.all(3),
            child: Center(
              child: Container(
                height: 220,
                width: 350,
                child: SfCartesianChart(
                    enableAxisAnimation: false,
                    plotAreaBorderWidth: 0,
                    // yAxis is for top to bottom line
                    primaryYAxis: CategoryAxis(
                      axisLine: AxisLine(width: 0),
                      arrangeByIndex: true,
                      // Range of the graph
                      minimum: 0,
                      maximum: 40,
                      majorGridLines: const MajorGridLines(
                          width: 2,
                          color: Color(0xffE9E5EF),
                          dashArray: [
                            12,
                          ]),
                      // minorTicksPerInterval: 1,
                    ),
                    primaryXAxis: CategoryAxis(
                      axisLine: AxisLine(width: 0),
                      // minorGridLines: const MinorGridLines(
                      //   width: 0,
                      // ),
                      majorGridLines: const MajorGridLines(
                        width: 0,
                      ),
                      // minorTicksPerInterval: 1,
                    ),
                    series: <ColumnSeries<SalesData, String>>[
                      ColumnSeries<SalesData, String>(
                          dashArray: <double>[14, 15],
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                          spacing: 1.5,
                          color: const Color(0xff6F12F6),
                          dataSource: data,
                          xValueMapper: (SalesData sales, _) => sales.year,
                          yValueMapper: (SalesData sales, _) => sales.sales),
                      // Width of the columns

                      ColumnSeries<SalesData, String>(

                          // dashArray: <double>[1, 1],
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                          spacing: 1.5,
                          color: const Color(0xff0E0023),
                          dataSource: data,
                          xValueMapper: (SalesData sales, _) => sales.year,
                          yValueMapper: (SalesData sales, _) => sales.sales),
                      // Width of the columns

                      // Width of the columns
                    ]),
              ),
            ),
          ),
          Row(
            children: [
              const SizedBox(
                width: 49,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(3),
                  color: const Color(0xff0E0023),
                ),
                height: 10,
                width: 10,
              ),
              const SizedBox(
                width: 3,
              ),
              const Text(
                'Income',
                style: TextStyle(color: Colors.grey),
              ),
              const SizedBox(width: 60),
              Container(
                height: 10,
                width: 10,
                decoration: BoxDecoration(
                  color: const Color(0xff6F12F6),
                  borderRadius: BorderRadius.circular(3),
                ),
              ),
              const SizedBox(
                width: 4,
              ),
              const Text(
                'Expense',
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 22, top: 5),
                child: Container(
                  height: 140,
                  width: 150,
                  decoration: BoxDecoration(
                      color: Colors.blue[200],
                      borderRadius:
                          const BorderRadius.all(Radius.circular(15))),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20, top: 20),
                            child: Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(30)),
                                  color: Colors.white,
                                ),
                                child: Material(
                                  color: Colors.transparent,
                                  borderRadius: BorderRadius.circular(30),
                                  child: InkWell(
                                      borderRadius: BorderRadius.circular(30),
                                      splashColor: Colors.grey,
                                      onTap: () {
                                        print('tapped');
                                      },
                                      child: Icon(Icons.arrow_downward)),
                                )),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 21,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Row(
                          children: [
                            Text('Income',
                                style: TextStyle(color: Colors.grey[200]))
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 18,
                        ),
                        child: Row(
                          children: [
                            const Text(
                              '\$18,548.99',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 13, right: 20, top: 5),
                child: Container(
                  height: 140,
                  width: 150,
                  decoration: BoxDecoration(
                      color: Colors.deepPurpleAccent[100],
                      borderRadius:
                          const BorderRadius.all(Radius.circular(15))),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20, top: 20),
                            child: Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(20)),
                                  color: Colors.white,
                                ),
                                child: Material(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Colors.transparent,
                                  child: InkWell(
                                    borderRadius: BorderRadius.circular(30),
                                    splashColor: Colors.grey,
                                    onTap: () {
                                      print('tap');
                                    },
                                    child: const Icon(
                                      Icons.arrow_upward,
                                      size: 20,
                                    ),
                                  ),
                                )),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Row(
                          children: [
                            Text('Expense',
                                style: TextStyle(color: Colors.grey[200]))
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 20,
                        ),
                        child: Row(
                          children: [
                            const Text(
                              '\$1,448.99',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )
        ])));
  }
}

class SalesData {
  SalesData(this.year, this.sales);

  final String year;
  var sales;
}
