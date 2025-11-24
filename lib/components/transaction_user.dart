import 'package:flutter/material.dart';
import '../models/transaction.dart';
import 'transaction_form.dart';
import 'transaction_list.dart';

class TransactionUser extends StatefulWidget {



  @override
  State<TransactionUser> createState() => _TransactionUserState();
}

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

class _TransactionUserState extends State<TransactionUser> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TransactionList(transactions: _transactions),
        TransactionForm(),
      ],
    );
  }
}
