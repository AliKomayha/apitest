import 'package:csci410exam/contact_card.dart';
import 'package:flutter/material.dart';
import 'contact.dart';
import 'contact_card.dart';

class ShowContacts extends StatefulWidget {
  const ShowContacts({super.key});


  @override
  State<ShowContacts> createState() => _ShowContactsState();
}

class _ShowContactsState extends State<ShowContacts> {

  Contact contact=contacts.first;
  String _text='contact.name';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_text),
        centerTitle: true,
      ),


      body: Column(

        children: [
          const SizedBox(height: 25.0),
          MyDropdownMenu(updateContact: updateContact),
          IconButton(
              onPressed: (){
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const ContactCard(),
                      settings: RouteSettings(arguments: contact),
                    )
                );
              },
              icon: Icon(Icons.zoom_in)),
        ],
    ),

    );
  }
  void updateContact(Contact contact){
    setState(() {
      this.contact=contact;

    });

  }
}


class MyDropdownMenu extends StatelessWidget {
  final Function(Contact) updateContact;
  const MyDropdownMenu({required this.updateContact ,super.key});

  @override
  Widget build(BuildContext context) {
    return DropdownMenu(
      dropdownMenuEntries: contacts.map<DropdownMenuEntry<Contact>>((Contact contact){
        return DropdownMenuEntry(value: contact, label: contact.name);

      }).toList(),
      width:250.0,
      initialSelection:contacts.first,
      onSelected:(Contact? contact){
        updateContact(contact as Contact);

      },
    );
  }
}
