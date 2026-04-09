import 'package:flutter/material.dart';

class StatusBadge extends StatelessWidget {
  final String status;

  const StatusBadge({super.key, required this.status});

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text(status),
      backgroundColor: status == 'Pronto' ? Colors.green[100] : Colors.orange[100],
    );
  }
}