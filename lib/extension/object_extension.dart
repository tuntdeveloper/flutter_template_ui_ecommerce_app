extension ObjectX on dynamic {
  Map<String, dynamic> get toJson {
    if (this == null) return {};

    final dataJson = <String, dynamic>{};

    (this as Map<Object?, Object?>).forEach((key, value) {
      dataJson[key.toString()] = value;
    });

    return dataJson;
  }
}
