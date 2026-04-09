import '../models/order.dart';

final List<Order> mockOrders = [
  Order(
    id: '1',
    clientName: 'Manu',
    itemMain: 'Café Latte de Gatinho',
    price: 12.50,
    status: 'Pronto',
    observations: 'Desenhar um bigode na espuma.',
  ),
  Order(
    id: '2',
    clientName: 'Douglas',
    itemMain: 'Cappuccino Gelado',
    price: 15.00,
    status: 'Preparando',
    observations: 'Sem açúcar.',
  ),
  Order(
    id: '3',
    clientName: 'Pedro',
    itemMain: 'Muffin de Mirtilo',
    price: 8.90,
    status: 'Pendente',
    observations: 'Aquecer antes de servir.',
  ),
  Order(
    id: '4',
    clientName: 'Vick',
    itemMain: 'Espresso Duplo',
    price: 7.00,
    status: 'Preparando',
    observations: 'Xícara pequena.',
  ),
];