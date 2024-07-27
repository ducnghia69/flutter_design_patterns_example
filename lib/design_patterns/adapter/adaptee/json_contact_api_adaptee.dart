import 'dart:convert';

import '../../../index.dart';

class JSONContactAPIAdaptee {
  const JSONContactAPIAdaptee();

  static const _contactsJson = '''
  {
    "contacts": [
      {
        "fullName": "Lê Thị Lisa",
        "email": "lisa.lt@host.com",
        "portfolioLink": "lisa.com.vn",
        "isFavorite": true
      },
      {
        "fullName": "Trần Như Rosé",
        "email": "rose.tn@host.com",
        "portfolioLink": "rose.com",
        "isFavorite": false
      },
      {
        "fullName": "Mai Hồng Jisoo",
        "email": "jisoo.mh@host.com",
        "portfolioLink": "jisoo.com",
        "isFavorite": false
      }
    ]
  }
  ''';

  Future<List<JSONContactData>> fetchJSONContacts() async {
    final decodedJson = jsonDecode(_contactsJson);
    final contactsJson = decodedJson['contacts'] as List<dynamic>;

    final contacts = contactsJson.map((contactJson) {
      return JSONContactData(
        name: contactJson['fullName'] as String,
        email: contactJson['email'] as String,
        portfolioLink: contactJson['portfolioLink'] as String,
        isFavorite: contactJson['isFavorite'] as bool,
      );
    }).toList();

    return Future.value(contacts);
  }
}
