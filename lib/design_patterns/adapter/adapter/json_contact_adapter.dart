import '../../../index.dart';

class JSONContactAdapter implements IContactAdapter {
  const JSONContactAdapter({
    this.adaptee = const JSONContactAPIAdaptee(),
  });

  final JSONContactAPIAdaptee adaptee;

  @override
  Future<List<Contact>> getContacts() async {
    final data = await adaptee.fetchJSONContacts();

    return data
        .map(
          (e) => Contact(
            name: e.name,
            email: e.email,
            portfolioLink: e.portfolioLink,
            isFavorite: e.isFavorite,
          ),
        )
        .toList();
  }
}
