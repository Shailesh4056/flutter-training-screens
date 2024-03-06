/// Interface Implementation
abstract class Playable {
  void play(); // Abstract method
}

class Guitar implements Playable {
  @override
  void play() {
    print('Playing the guitar...');
  }
}

