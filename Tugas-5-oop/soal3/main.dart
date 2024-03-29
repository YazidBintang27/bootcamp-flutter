import 'armor_titan.dart';
import 'attack_titan.dart';
import 'beast_titan.dart';
import 'human.dart';

void main(List<String> args) {
  Attacktitan attacktitan = Attacktitan();
  ArmorTitan armorTitan = ArmorTitan();
  BeastTitan beastTitan = BeastTitan();
  Human human = Human();

  attacktitan.setPowerPoint(8);
  armorTitan.setPowerPoint(10);
  beastTitan.setPowerPoint(6);
  human.setPowerPoint(4);

  print("Power point Attack Titan: ${attacktitan.getPowerPoint()}");
  print("Power point Armor Titan: ${armorTitan.getPowerPoint()}");
  print("Power point Beast Titan: ${beastTitan.getPowerPoint()}");
  print("Power point Human: ${human.getPowerPoint()}");

  print("Attack Titan's Character: ${attacktitan.punch()}");
  print("Armor Titan's Character: ${armorTitan.terjang()}");
  print("Beast Titan's Character: ${beastTitan.lempar()}");
  print("Human's Character: ${human.killAllTitan()}");
}

