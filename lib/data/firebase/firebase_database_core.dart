import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:stylish/data/di/dependency_injection.dart';
import 'package:stylish/data/firebase/firebase_firestore_core.dart';
import 'package:stylish/data/local_db/local_db.dart';
import 'package:stylish/extension/object_extension.dart';

abstract class FirebaseDatabaseCoreBase<T> {
  Future<void> create({required dynamic data});

  Future<T> get();

  Future<List<T>> getAll();

  Stream<T> onChildCreated();
}

abstract class FirebaseDatabaseCore<T> extends FirebaseDatabaseCoreBase {
  FirebaseDatabaseCore({required this.pathCollection});

  final String pathCollection;

  T fromJson(Map<String, dynamic> json);

  @override
  Future<void> create({
    QueryData? query,
    String? id,
    required data,
    String? ref,
    List<FilterData> filters = const [],
  }) async {
    var response = FirebaseDatabase.instance.ref(ref ?? pathCollection);

    for (final filter in filters) {
      response = response.child(filter.value);
    }

    await response.set(data);
  }

  @override
  Future<T?> get({
    List<FilterData> filters = const [],
  }) async {
    final userId = getIt<LocalDbService>().getUserInfo().id;

    final response = FirebaseDatabase.instance.ref('$userId');

    for (final filter in filters) {
      response.child(filter.value);
    }

    final result = await response.get();

    if (result.value == null) return null;

    return fromJson(result.value.toJson);
  }

  @override
  Future<List<T>> getAll({
    List<FilterData> filters = const [],
  }) async {
    final userId = getIt<LocalDbService>().getUserInfo().id;

    final response = FirebaseDatabase.instance.ref('$userId');

    for (final filter in filters) {
      response.child(filter.value);
    }

    final result = await response.get();

    if (result.value == null) return [];

    return (result.value as List<dynamic>)
        .map((e) => fromJson(e.toJson))
        .toList();
  }

  @override
  Stream<DatabaseEvent> onChildCreated({
    List<FilterData> filters = const [],
  }) {
    final userId = getIt<LocalDbService>().getUserInfo().id;

    var response = FirebaseDatabase.instance.ref('$userId');

    for (final filter in filters) {
      response = response.child(filter.value);
    }

    return response.onChildAdded;
  }
}
