void main() {
  var map = <String, String>{
    "key1": "value1",
    "key2": "value2",
  };
  List<int> list =[1,2,3];
  print(getList(list));

  print(getMap(map));
}

T getList<T>(List<T> list) {
  if (list.isEmpty) {
    throw Exception("List is empty");
  }
  return list.first;
}

T getMap<T>(Map<T, T> map) {
  if (map.isEmpty) {
    throw Exception("Map is empty");
  }
  return map.keys.first;
}
