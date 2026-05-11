import 'package:flutter/material.dart';
import '../mocks/mock_orders.dart';
import 'order_details_page.dart';

class OrderListPage extends StatefulWidget {
  const OrderListPage({super.key});

  @override
  State<OrderListPage> createState() => _OrderListPageState();
}

class _OrderListPageState extends State<OrderListPage> {
  // Função para gerenciar a reordenação da lista
  void _reorderOrders(int oldIndex, int newIndex) {
    setState(() {
      if (newIndex > oldIndex) {
        newIndex -= 1;
      }
      final item = mockOrders.removeAt(oldIndex);
      mockOrders.insert(newIndex, item);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cat Café - Fila de Pedidos'),
        backgroundColor: const Color(0xFFE1BEE7), 
      ),
      // Substituindo o ListView comum pelo Reorderable
      body: ReorderableListView(
        onReorder: _reorderOrders,
        children: [
          for (int index = 0; index < mockOrders.length; index++)
            Card(
              key: ValueKey(mockOrders[index].id), // Key obrigatória para o Drag & Drop
              margin: const EdgeInsets.symmetric(horizontal: 6, vertical: 8),
              child: ListTile(
                title: Text('Pedido #${mockOrders[index].id}'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => OrderDetailsPage(order: mockOrders[index]),
                    ),
                  );
                },
              ),
            ),
        ],
      ),
    );
  }
}