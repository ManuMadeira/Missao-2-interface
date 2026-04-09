class Order {
  final String id;
  final String clientName;
  final String itemMain;
  final double price;
  final String status; // Ex: Pendente, Preparando, Pronto
  final String observations;

  Order({
    required this.id,
    required this.clientName,
    required this.itemMain,
    required this.price,
    required this.status,
    required this.observations,
  });
}
