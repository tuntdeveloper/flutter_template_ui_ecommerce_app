import 'package:cloud_firestore/cloud_firestore.dart';

abstract class FirebaseFireStoreCoreBase<T> {
  Future<void> update({required String id});

  Future<void> create();

  Future<void> delete();

  Future<List<T>> getAll();

  Future<T> get();
}

abstract class FirebaseFireStoreCore<T> extends FirebaseFireStoreCoreBase {
  FirebaseFireStoreCore({required this.pathCollection});

  final String pathCollection;

  T fromJson(Map<String, dynamic> json);

  @override
  Future<void> create({Map<String, dynamic>? data}) async {
    if (data == null) return;

    final response = FirebaseFirestore.instance.collection(pathCollection);
    await response.add(data);
  }

  @override
  Future<void> delete({String? id, String? field}) async {
    final response = FirebaseFirestore.instance.collection(pathCollection);
    var documentReference = response.where(field ?? 'id', isEqualTo: id);

    final result = await documentReference.get();

    final _id = result.docs.first.id;

    DocumentReference doc = response.doc(_id);

    return doc.delete();
  }

  @override
  Future<void> update({Map<String, dynamic>? data, required String id}) async {
    if (data == null) return;

    final response = FirebaseFirestore.instance.collection(pathCollection);
    var documentReference = response.where('id', isEqualTo: id);

    final result = await documentReference.get();

    final _id = result.docs.first.id;

    DocumentReference doc = response.doc(_id);

    return doc.set(data, SetOptions(merge: true));
  }

  @override
  Future<List<T>> getAll({
    QueryData? query,
    List<FilterData> multipleFilters = const [],
  }) async {
    final response =
        FirebaseFirestore.instance.collection(pathCollection).limit(100);

    for (final filter in multipleFilters) {
      response.where(filter.field, isEqualTo: filter.value);
    }

    if (query != null) {
      response.orderBy(query.fieldSortBy, descending: query.isDesc);
    }

    final snapShot = await response.get();

    return snapShot.docs.map((e) => fromJson(e.data())).toList();
  }

  @override
  Future<T?> get({
    QueryData? query,
    List<FilterData> multipleFilters = const [],
  }) async {
    final response = FirebaseFirestore.instance.collection(pathCollection);

    for (final filter in multipleFilters) {
      response.where(filter.field, isEqualTo: filter.value);
    }

    if (query != null) {
      response.orderBy(query.fieldSortBy, descending: query.isDesc);
    }

    var documentReference = await response.get();

    if (documentReference.docs.isEmpty) return fromJson({});

    return fromJson(documentReference.docs.first.data());
  }
}

class FilterData {
  final String field;
  final String value;

  FilterData(this.field, this.value);
}

class QueryData {
  final bool isDesc;
  final String fieldSortBy;

  QueryData({required this.isDesc, required this.fieldSortBy});
}
