import 'package:flutter/material.dart';

class Fuelcalculator extends StatefulWidget {
  const Fuelcalculator({Key? key}) : super(key: key);

  @override
  State<Fuelcalculator> createState() => _FuelCalculatorState();
}

class _FuelCalculatorState extends State<Fuelcalculator> {
  final _curriencies = [
    'Rupees',
    'Dollars',
    'Euros',
    'Pounds',
  ];
  String _currency = 'Rupees';
  String result = '';

  var distanceController = TextEditingController();
  var unitController = TextEditingController();
  var priceController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.directions_car),
        title: const Text('Fuel Calculator'),
      ),
      body: Container(
        color: Colors.white,
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: distanceController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Distance',
                  hintText: 'e.g. 250',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: unitController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'No of Kms Per Liter',
                  hintText: 'e.g. 16',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      controller: priceController,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        labelText: 'Fuel Cost Per Litre',
                        hintText: 'e.g. 110',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: DropdownButton(
                    value: _currency,
                    items: _curriencies.map((String currency) {
                      return DropdownMenuItem<String>(
                          child: Text(currency), value: currency);
                    }).toList(),
                    onChanged: (String? value) {
                      _onDropDownMenuItemChanged(value);
                    },
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        _calculate();
                      },
                      child: const Text('Calculate'),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        _reset();
                      },
                      child: const Text('Reset'),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                result,
                style: const TextStyle(fontSize: 24.0, color: Colors.black),
              ),
            )
          ],
        ),
      ),
    );
  }

  void _onDropDownMenuItemChanged(String? value) {
    setState(() {
      _currency = value!;
    });
  }

  void _calculate() {
    double distance = double.parse(distanceController.text);
    double unitValue = double.parse(unitController.text);
    double price = double.parse(priceController.text);

    double totalCost = (distance / unitValue) * price;

    setState(() {
      result =
          'Total Cost of the Trip : \n${totalCost.toStringAsFixed(2)} in $_currency';
    });
  }

  void _reset() {
    distanceController.text = '';
    unitController.text = '';
    priceController.text = '';

    setState(() {
      result = '';
      _currency = 'Rupees';
    });
  }
}
