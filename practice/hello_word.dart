void helloWord() {
  print("hello word");
}

class Uni {
  int? firstUniqChar(String s) {
    print(s);
     int count = 0;
    for (int i = 0; i < 1; i++) {
      for (int j = i + 1; j < s.length; j++) {
        if (s[i] == s[j]) {
           return count++;
        } else {
          return -1;
        }
      }
    }
  }
}