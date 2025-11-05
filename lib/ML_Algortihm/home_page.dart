import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final areaCtrl = TextEditingController();
  final bedroomCtrl = TextEditingController();
  final locationCtrl = TextEditingController();
  double? result;
  bool loading = false;

  Future<void> predictPrice() async {
    setState(() => loading = true);

    final dio = Dio();
    final response = await dio.post(
      "http://192.168.1.163:5500/predict",
      data: {
        "area": double.parse(areaCtrl.text),
        "bedrooms": int.parse(bedroomCtrl.text),
        "location": int.parse(locationCtrl.text),
      },
    );

    setState(() {
      loading = false;
      result = response.data["predicted_price"];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("🏠 House Price Predictor")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(controller: areaCtrl, decoration: const InputDecoration(labelText: "Area (sqft)")),
            TextField(controller: bedroomCtrl, decoration: const InputDecoration(labelText: "Bedrooms")),
            TextField(controller: locationCtrl, decoration: const InputDecoration(labelText: "Location (1-3)")),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: loading ? null : predictPrice,
              child: loading ? const CircularProgressIndicator() : const Text("Predict"),
            ),
            const SizedBox(height: 20),
            if (result != null)
              Text(
                "Predicted Price: \$${result!.toStringAsFixed(2)}",
                style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
          ],
        ),
      ),
    );
  }
}
