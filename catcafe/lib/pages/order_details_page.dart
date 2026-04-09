import 'package:flutter/material.dart';
import '../models/order.dart';
import '../components/status_badge.dart';

class OrderDetailsPage extends StatelessWidget {
  final Order order;

  const OrderDetailsPage({super.key, required this.order});

  void _showFinishDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text('Finalizar Pedido'),
        content: const Text('Deseja confirmar a entrega deste pedido?'),
        actions: [
          TextButton(onPressed: () => Navigator.pop(ctx), child: const Text('Não')),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(ctx);
              Navigator.pop(context);
            },
            child: const Text('Sim'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Detalhes: ${order.id}')),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child: Icon(Icons.coffee, size: 80, color: Colors.purple[200])),
            const SizedBox(height: 20),
            Text('Produto: ${order.itemMain}', style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            Text('Cliente: ${order.clientName}', style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 10),
            StatusBadge(status: order.status),
            const Divider(height: 30),
            const Text('Observações:', style: TextStyle(fontWeight: FontWeight.bold)),
            Text(order.observations),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: const Color(0xFFE1BEE7)),
                onPressed: () => _showFinishDialog(context),
                child: const Text('Concluir Pedido'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}