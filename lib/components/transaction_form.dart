import 'package:flutter/material.dart';

class TransactionForm extends StatelessWidget {

  final titleController = TextEditingController();
  final valueController = TextEditingController() ;

  @override
  Widget build(BuildContext context) {
    return           Card(
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: 'Title'),
              controller: titleController,
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Value (R\$)'),
              controller: valueController,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  child: Text('Add Transaction'),
                  style: TextButton.styleFrom(
                    primary: Colors.purple,
                  ),
                  onPressed: () {
                    print(titleController);
                    print(valueController);
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
