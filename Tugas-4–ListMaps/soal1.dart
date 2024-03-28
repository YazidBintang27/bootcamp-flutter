void main(List<String> args) {
  
  List<int> range(int startNum, int finishNum) {
    List<int> result = [];
    if (startNum < finishNum) {
      for (int i = startNum; i <= finishNum; i++) {
        result.add(i);
      }
    } else {
      for (int i = startNum; i >= finishNum; i--) {
        result.add(i);
      }
    }
    return result;
  }

  print(range(10, 5));
}
