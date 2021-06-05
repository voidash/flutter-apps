import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class NewTransaction extends StatefulWidget {
  final Function addTx;

  NewTransaction(this.addTx);

  @override
  _NewTransactionState createState() => _NewTransactionState();
}

class _NewTransactionState extends State<NewTransaction> {
  final _titleController = TextEditingController();
  final _amountController =
      TextEditingController(); // have to use textEditing contorller instead of string
  DateTime _selectedDate;

  void _submitData() {
    if (_amountController.text.isEmpty) {
      return;
    }

    final enteredTitle = _titleController.text;
    final enteredAmount = double.parse(_amountController.text);

    if (enteredTitle.isEmpty || enteredAmount <= 0 || _selectedDate == null) {
      return;
    }
    widget.addTx(enteredTitle, enteredAmount,
        _selectedDate); //flutter automatically provides this widget

  }

  void _presentDatePicker() {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2020),
      lastDate: DateTime.now(),
    ).then((pickedDate) {
      if (pickedDate == null) {
        return;
      }

      setState(() {
        _selectedDate = pickedDate;
      });
    });
  }
  


  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 5,
        child: Container(
            padding: EdgeInsets.all(10),
            child: SingleChildScrollView(
                          child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    TextField(
                      decoration: InputDecoration(labelText: 'Title'),
                      controller: _titleController,
                      onSubmitted: (_) => _submitData(),
                    ),
                    TextField(
                      decoration: InputDecoration(labelText: 'Amount'),
                      controller: _amountController,
                      onSubmitted: (_) => _submitData(),
                    ),
                    Container(
                        height: 70,
                        child: Row(
                          children: <Widget>[
                            Expanded(
                                child: Text(
                              _selectedDate == null
                                  ? 'No Date Chosen'
                                  : 'Picked Date ${DateFormat.yMd().format(_selectedDate)}',
                            )),

                      IconButton(
                        icon: Icon(Icons.date_range_rounded),
                        onPressed: _presentDatePicker),
                          ],
                        )),
                    IconButton(
                        icon: Icon(Icons.add_box_sharp), onPressed: _submitData),
                  ]),
            )));
  }
}
