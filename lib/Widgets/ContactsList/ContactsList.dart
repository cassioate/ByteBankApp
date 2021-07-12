import 'package:bytebank/Model/Contact.dart';
import 'package:bytebank/Widgets/ContactForm/ContactForm.dart';
import 'package:flutter/material.dart';

class ContactsList extends StatefulWidget {
  @override
  _ContactsListState createState() => _ContactsListState();
}

class _ContactsListState extends State<ContactsList> {
  final List<Contact> contacts = [];

  adicionar() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ContactForm(),
      ),
    ).then((value) => print(value));
  }

  contactItemBuilder(context, index) {
    final Contact contact = contacts[index];
    return ContactItem(contact);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contacts'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) => contactItemBuilder(context, index),
        itemCount: contacts.length,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => adicionar(),
        child: Icon(Icons.add),
      ),
    );
  }
}

class ContactItem extends StatelessWidget {
  final Contact contact;

  ContactItem(this.contact);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(
          contact.name!,
          style: TextStyle(
            fontSize: 24.0,
          ),
        ),
        subtitle: Text(
          contact.accountNumber.toString(),
          style: TextStyle(
            fontSize: 16.0,
          ),
        ),
      ),
    );
  }
}
