import 'dart:async';

void main(List<String> args) async {
  Human human = Human();

  print("Eren");
  print("Levi");
  print("Armin");
  await human.getData();
  print(human.name);
}

class Human {
  String name = "Nama character Attack On Titan";

  Future<void> getData() async {
    print("Waiting data ...");
    await Future.delayed(Duration(seconds: 3), () {
      name = "Mikasa";
      print("Get data [done]");
    });
  }
}
