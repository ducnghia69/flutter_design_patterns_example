import '../../../index.dart';

class XMLContactAdapter implements IContactAdapter {
  const XMLContactAdapter({
    this.xmlContactAPIAdaptee = const XMLContactAPIAdaptee(),
  });

  final XMLContactAPIAdaptee xmlContactAPIAdaptee;

  @override
  Future<List<Contact>> getContacts() async {
    final data = await xmlContactAPIAdaptee.fetchXMLContacts();

    return data
        .map(
          (e) => Contact(
            name: e.name,
            phone: e.phone,
            isFavorite: e.isFavorite,
          ),
        )
        .toList();
  }
}
