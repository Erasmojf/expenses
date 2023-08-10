import 'package:flutter/material.dart';

import 'transaction_form.dart';
import 'transaction_list.dart';
import '../models/transaction.dart';

class TransactionUser extends StatefulWidget {
  @override
  State<TransactionUser> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<TransactionUser> {
  final _transaction = [
    Transaction(
      id: "t1",
      title: "New Sniker",
      value: 310.76,
      date: DateTime.now(),
    ),
    Transaction(
      id: "t2",
      title: "Conta de Luz",
      value: 250.76,
      date: DateTime.now(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TransactionList(_transaction),
        TransactionForm(),
      ],
    );
  }
}
