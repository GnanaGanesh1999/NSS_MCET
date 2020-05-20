import 'package:cloud_firestore/cloud_firestore.dart';

class SearchService {
  searchByName(String searchField) {
    return Firestore.instance
        .collection('users')
        .where('bloodGroup', isEqualTo: searchField..toUpperCase())
        .getDocuments();
  }
}
