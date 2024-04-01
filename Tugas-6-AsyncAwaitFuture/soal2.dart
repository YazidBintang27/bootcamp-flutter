void main(List<String> args) {
  print("Life");
  Future.delayed(Duration(milliseconds: 100), () {
    print("never flat");
  });
  print("is");
}
