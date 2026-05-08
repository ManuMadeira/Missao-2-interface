import 'package:flutter/material.dart';
import '../models/order.dart';

class OrderCard extends StatelessWidget {
  final Order order;
  final VoidCallback onTap;

  // Adicionada a Key no construtor
  const OrderCard({super.key, required this.order, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Card(
      key: key, // Atribuindo a key ao Card
      color: Colors.white,
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: ListTile(
        leading: const Icon(Icons.drag_handle, color: Colors.grey), // Ícone indicativo de arrastar
        title: Text(order.itemMain, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text('Cliente: ${order.clientName}'),
        trailing: const Icon(Icons.chevron_right),
        onTap: onTap,
      ),
    );
  }
}