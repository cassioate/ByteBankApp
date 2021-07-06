import 'package:bytebank/Widgets/ContactForm/ContactForm.dart';
import 'package:flutter/material.dart';

class ContactsList extends StatefulWidget {
  @override
  _ContactsListState createState() => _ContactsListState();
}

class _ContactsListState extends State<ContactsList> {
  adicionar() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ContactForm(),
      ),
    ).then((value) => print(value));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contacts'),
      ),
      body: ListView(
        children: <Widget>[
          Card(
            child: ListTile(
              title: Text(
                'Cassio',
                style: TextStyle(fontSize: 24.0),
              ),
              subtitle: Text(
                '10.000,00',
                style: TextStyle(fontSize: 16.0),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => adicionar(),
        child: Icon(Icons.add),
      ),
    );
  }
}
