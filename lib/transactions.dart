import 'package:flutter/material.dart';

class TransactionPage extends StatefulWidget {
  @override
  _TransactionPageState createState() => _TransactionPageState();
}

class _TransactionPageState extends State<TransactionPage> {
  final TextEditingController amountController = TextEditingController();
  int balance = 0;

  void addMoney() {
    setState(() {
      balance += int.parse(amountController.text);
    });
  }

  void withdrawMoney() {
    setState(() {
      balance -= int.parse(amountController.text);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Transaction Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Current Balance: $balance Coins',
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 24),
            TextField(
              controller: amountController,
              decoration: const InputDecoration(
                labelText: 'Enter Amount',
              ),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: addMoney,
              child: const Text('Add Money'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: withdrawMoney,
              child: const Text('Withdraw Money'),
            ),
          ],
        ),
      ),
    );
  }
}