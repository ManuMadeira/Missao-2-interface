import 'package:flutter/material.dart';
import '../mocks/mock_orders.dart';
import '../components/order_card.dart';
import 'order_details_page.dart';

class OrderListPage extends StatelessWidget {
  const OrderListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cat Café - Pedidos'),
        backgroundColor: const Color(0xFFE1BEE7), // Lilás
      ),
      body: ListView.builder(
        itemCount: mockOrders.length,
        itemBuilder: (ctx, index) {
          final order = mockOrders[index];
          return OrderCard(
            order: order,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => OrderDetailsPage(order: order)),
              );
            },
          );
        },
      ),
    );
  }
}