import 'package:xml/xml.dart';

import '../../../index.dart';

class XMLContactAPIAdaptee {
  const XMLContactAPIAdaptee();

  static const _contactsXml = '''
  <?xml version="1.0"?>
  <contacts>
    <contact>
      <fullname>Lê Văn Lê</fullname>
      <phone>0123456789</phone>
      <favourite>false</favourite>
    </contact>
    <contact>
      <fullname>Nguyễn Văn Nguyễn</fullname>
      <phone>052312323</phone>
      <favourite>false</favourite>
    </contact>
    <contact>
      <fullname>Trần Như Nhộng</fullname>
      <phone>099999999</phone>
      <favourite>true</favourite>
    </contact>
  </contacts>
  ''';

  Future<List<XMLContactData>> fetchXMLContacts() async {
    final document = XmlDocument.parse(_contactsXml);
    final contacts = <XMLContactData>[];

    final contactElements = document.findAllElements('contact');
    for (var contactElement in contactElements) {
      final fullname = contactElement.findElements('fullname').single.innerText;
      final phone = contactElement.findElements('phone').single.innerText;
      final favouriteText = contactElement.findElements('favourite').single.innerText;
      final favourite = favouriteText.toLowerCase() == 'true';

      contacts.add(XMLContactData(
        name: fullname,
        phone: phone,
        isFavorite: favourite,
      ));
    }
    return Future.value(contacts);
  }
}
