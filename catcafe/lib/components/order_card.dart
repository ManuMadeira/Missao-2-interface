import 'package:flutter/material.dart';
import '../models/order.dart';

class OrderCard extends StatelessWidget {
  final Order order;
  final VoidCallback onTap;
  final int index;

  const OrderCard({super.key, required this.order, required this.onTap, required this.index});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      color: Colors.white,
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 6, vertical: 4),
        leading: ReorderableDragStartListener(
          index: index,
          child: const Icon(Icons.drag_handle, color: Colors.grey),
        ),
        title: Text(
          order.itemMain,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text('Cliente: ${order.clientName}'),
        trailing: const Icon(Icons.chevron_right, color: Colors.purple),
        onTap: onTap,
      ),
    );
  }
}