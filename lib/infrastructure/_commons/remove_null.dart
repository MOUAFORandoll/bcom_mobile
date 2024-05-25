
dynamic removeNull(dynamic params) {
  if (params is Map) {
    var customMap = {};
    params.forEach((key, value) {
      var customValue = removeNull(value);
      if (customValue != null) {
        customMap[key] = customValue;
      }
    });
    if (customMap.isNotEmpty) return customMap;
  } else if (params is List) {
    var lists = [];
    for (var val in params) {
      var customValue = removeNull(val);
      if (customValue != null) {
        lists.add(customValue);
      }
    }
    if (lists.isNotEmpty) return lists;
  } else if (params != null) {
    return params;
  }
  return null;
}
