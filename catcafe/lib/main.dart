import 'package:flutter/material.dart';
import 'pages/order_list_page.dart';

void main() {
  runApp(const CatCafeApp());
}

class CatCafeApp extends StatelessWidget {
  const CatCafeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cat Café',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFE1F5FE), // Azul Bebê
        primarySwatch: Colors.purple,
        useMaterial3: true,
      ),
      home: const OrderListPage(),
    );
  }
}