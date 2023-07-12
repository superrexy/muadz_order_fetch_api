import 'package:flutter/material.dart';
import 'package:muadz_order/order_model.dart';
import 'package:muadz_order/order_service.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<LatestOrder> latestOrder = [];

  void getLatestOrder() async {
    final response = await fetchLatestOrder();
    setState(() {
      latestOrder = response.data!;
    });
  }

  @override
  void initState() {
    getLatestOrder();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: latestOrder.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(latestOrder[index].code!),
            subtitle: Text(latestOrder[index].checker!.name!),
          );
        },
      ),
    );
  }
}
