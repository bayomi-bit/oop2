void main() {
  Box boxInt = Box<int>(5);
  print("instance of int: ${boxInt.value}");
  Box boxString = Box<String>("hello");
  print("instance of String: ${boxString.value}");
}

class Box<T> {
  T? value;

  Box(this.value);

  T getValue() {
    return value!;
  }
}
