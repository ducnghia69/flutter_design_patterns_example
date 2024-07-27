import 'package:flutter/material.dart';

import '../../../../../index.dart';

class ContactSection extends StatefulWidget {
  const ContactSection({
    required this.contactAdapter,
    this.title = '',
    super.key,
  });

  final IContactAdapter contactAdapter;
  final String title;

  @override
  State<ContactSection> createState() => _ContactSectionState();
}

class _ContactSectionState extends State<ContactSection> {
  bool isShowContacts = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(widget.title, style: const TextStyle(fontWeight: FontWeight.bold)),
        ElevatedButton(
          onPressed: () {
            setState(() {
              isShowContacts = !isShowContacts;
            });
          },
          child: Text(isShowContacts ? 'Hide contacts' : 'Show contacts'),
        ),
        if (isShowContacts)
          FutureBuilder(
            future: widget.contactAdapter.getContacts(),
            builder: (context, snapshot) {
              final data = snapshot.data;

              if (data == null) {
                return const Center(child: CircularProgressIndicator());
              }

              return ListView.separated(
                shrinkWrap: true,
                itemCount: data.length,
                separatorBuilder: (context, index) => const SizedBox(height: 10),
                itemBuilder: (context, index) {
                  final name = data[index].name;
                  final email = data[index].email;
                  final phone = data[index].phone;
                  final portfolio = data[index].portfolioLink;

                  const nameStyle = TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  );
                  const moreInfoStyle = TextStyle(
                    color: Colors.grey,
                    fontSize: 12,
                  );

                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        if (name.isNotEmpty) Text('Họ và tên: $name', style: nameStyle),
                        if (email.isNotEmpty) Text('Email: $email', style: moreInfoStyle),
                        if (phone.isNotEmpty) Text('Số điện thoại: $phone', style: moreInfoStyle),
                        if (portfolio.isNotEmpty)
                          Text('Liên kết: $portfolio', style: moreInfoStyle),
                      ],
                    ),
                  );
                },
              );
            },
          ),
      ],
    );
  }
}
