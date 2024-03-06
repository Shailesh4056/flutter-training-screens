
  void mapMerging(Map<String, int> map1, Map<String, int> map2) {
    // Merge two maps into a single map
    Map<String, int> mergedMap = {...map1, ...map2};
    print('Merged Map: $mergedMap');
  }