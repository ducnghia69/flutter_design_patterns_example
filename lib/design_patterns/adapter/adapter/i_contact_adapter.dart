import '../../../index.dart';

abstract class IContactAdapter {
  Future<List<Contact>> getContacts();
}
