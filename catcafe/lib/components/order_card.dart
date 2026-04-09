import 'package:flutter/material.dart';
import '../models/order.dart';

class OrderCard extends StatelessWidget {
  final Order order;
  final VoidCallback onTap;

  const OrderCard({super.key, required this.order, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: const Color(0xFFE1F5FE), // Azul Bebê
          child: const Icon(Icons.pets, color: Colors.purple),
        ),
        title: Text(order.itemMain, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text('Cliente: ${order.clientName}'),
        trailing: const Icon(Icons.chevron_right),
        onTap: onTap,
      ),
    );
  }
}