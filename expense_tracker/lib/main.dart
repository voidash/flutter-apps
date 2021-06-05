import 'package:flutter/material.dart';
import './widgets/newTransaction.dart';
import './models/transaction.dart';
import './widgets/transaction_list.dart';
import './widgets/chart.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Expense Tracker',
      theme: ThemeData(
          primarySwatch: Colors.red,
          accentColor: Colors.green,
          textTheme: ThemeData.light().textTheme.copyWith(
                headline6: TextStyle(
                    fontFamily: 'OpenSans',
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
                button: TextStyle(color: Colors.white),
              ),
          appBarTheme: AppBarTheme(textTheme: ThemeData.light().textTheme)),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Transaction> _userTransactions = [];

  void _deleteTrasaction(String id) {
    setState(() {
      _userTransactions.removeWhere((tx) => tx.id == id);
    });
  }

  void _addNewTransaction(
      String txTitle, double txAmount, DateTime chosenDate) {
    final newTx = Transaction(
        title: txTitle,
        amount: txAmount,
        date: chosenDate,
        id: DateTime.now().toString());

    setState(() {
      _userTransactions.add(newTx);
    });
  }
  List<Transaction> _getRecentTransactions(){
    return _userTransactions.where(
      (tx) {
        return tx.date.isAfter(DateTime.now().subtract(Duration(days:7)));
      }
    ).toList();
  }

  void _startAddNewTransaction(BuildContext ctx) {
    showModalBottomSheet(
        context: ctx,
        builder: (_) {
          return GestureDetector(
            onTap: () {},
            child: NewTransaction(_addNewTransaction),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Personal Expense'),
        actions: <Widget>[IconButton(icon: Icon(Icons.add), onPressed: () => _startAddNewTransaction(context))]),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Chart(_getRecentTransactions()),
              TransactionList(_userTransactions, _deleteTrasaction)
            ],
          ),
        ));
  }
}
