void main(List<String> args) {
  
  List<int> rangeWithStep(int startNum, int finishNum, int step) {
    List<int> result = [];
    if (startNum < finishNum) {
      for (int i = startNum; i <= finishNum; i+=step) {
        result.add(i);
      }
    } else {
      for (int i = startNum; i >= finishNum; i-=step) {
        result.add(i);
      }
    }
    return result;
  }

  print(rangeWithStep(25, 5, 2));

}