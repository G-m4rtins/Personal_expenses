import 'dart:math';

import 'package:flutter/material.dart';
import '../models/transaction.dart';
import 'transaction_form.dart';
import 'transaction_list.dart';

class TransactionUser extends StatefulWidget {



  @override
  State<TransactionUser> createState() => _TransactionUserState();
}
class _TransactionUserState extends State<TransactionUser> {

  final _transactions = [
    Transaction(
      id: 't1',
      title: 'New Shoes',
      value: 310.76,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Groceries',
      value: 211.30,
      date: DateTime.now(),
    ),
  ];

  _addTransaction(String title, double Value) {
    final newTransaction = Transaction(
      id: Random().nextDouble().toString(),
      title: title,
      value: Value,
      date: DateTime.now(),
    );

    setState(() {
      _transactions.add(newTransaction);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TransactionForm(_addTransaction),
        TransactionList(transactions: _transactions),
      ],
    );
  }
}
