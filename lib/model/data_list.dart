import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

class ListOfData{
  int count = 0;
  List<Map<String, dynamic>> categorys = [
    {
      'image': 'https://w7.pngwing.com/pngs/1014/259/png-transparent-pantry-supermarket-food-price-abarrotes-food-convenience-food-food-storage-thumbnail.png',
      'price':'\$ 15',
       'weight':'20 mg',
      'description':'Lactaid Fat Free Pure Milk',
      'count':5,
    },
    {
      'image': 'https://www.pngall.com/wp-content/uploads/4/Grocery-PNG-Free-Download.png',
      'price':'\$ 15',
      'weight':'20 mg',
      'description':'Lactaid Fat Free Pure Milk',
      'count':0,
    },
    {
      'image': 'https://freepngimg.com/thumb/grocery/53730-5-grain-hd-download-free-image-thumb.png',
      'price':'\$ 15',
      'weight':'20 mg',
      'description':'Lactaid Fat Free Pure Milk',
    'count':0,
    },
    {
      'image': 'https://w7.pngwing.com/pngs/1014/259/png-transparent-pantry-supermarket-food-price-abarrotes-food-convenience-food-food-storage-thumbnail.png',
      'price':'\$ 15',
      'weight':'20 mg',
      'description':'Lactaid Fat Free Pure Milk',
      'count':0,
    }
  ];
  List<Map<String, dynamic>> storeDetails = [
    {
        'imageUrl':
        'https://www.vmcdn.ca/f/files/localprofile/import/2023_04_shutterstock_2033960729-scaled.jpg',
        'rank': '4.5',
        'title': 'Walmart',
        'mile': '1 mile',
        'subtitle': 'Grocery',
        'address': '3456 Washington Street, Us, 4568'
    },    {
      'imageUrl':
      'https://www.supermarketnews.com/sites/supermarketnews.com/files/styles/article_featured_retina/public/Stop__Shop_new_look_store_banner_0.png?itok=HBTGic60',
      'rank': '4.5',
      'title': 'Stop & Shop',
      'mile': '1 mile',
      'subtitle': 'Grocery',
      'address': '3456 Washington Street, Us, 4568'
    },    {
      'imageUrl': 'https://www.mashed.com/img/gallery/the-untold-truth-of-safeway/intro-1641239562.jpg',
      'rank': '4.5',
      'title': 'Safeway',
      'mile': '1 mile',
      'subtitle': 'Grocery',
      'address': '3456 Washington Street, Us, 4568'
    },    {
      'imageUrl':
      'https://www.vmcdn.ca/f/files/localprofile/import/2023_04_shutterstock_2033960729-scaled.jpg',
      'rank': '4.5',
      'title': 'Walmart',
      'mile': '1 mile',
      'subtitle': 'Grocery',
      'address': '3456 Washington Street, Us, 4568'
    },
    {
      'imageUrl':
      'https://www.vmcdn.ca/f/files/localprofile/import/2023_04_shutterstock_2033960729-scaled.jpg',
      'rank': '4.5',
      'title': 'Walmart',
      'mile': '1 mile',
      'subtitle': 'Grocery',
      'address': '3456 Washington Street, Us, 4568'
    },    {
      'imageUrl':
      'https://www.vmcdn.ca/f/files/localprofile/import/2023_04_shutterstock_2033960729-scaled.jpg',
      'rank': '4.5',
      'title': 'Walmart',
      'mile': '1 mile',
      'subtitle': 'Grocery',
      'address': '3456 Washington Street, Us, 4568'
    },    {
      'imageUrl':
      'https://www.vmcdn.ca/f/files/localprofile/import/2023_04_shutterstock_2033960729-scaled.jpg',
      'rank': '4.5',
      'title': 'Walmart',
      'mile': '1 mile',
      'subtitle': 'Grocery',
      'address': '3456 Washington Street, Us, 4568'
    },    {
      'imageUrl':
      'https://www.vmcdn.ca/f/files/localprofile/import/2023_04_shutterstock_2033960729-scaled.jpg',
      'rank': '4.5',
      'title': 'Walmart',
      'mile': '1 mile',
      'subtitle': 'Grocery',
      'address': '3456 Washington Street, Us, 4568'
    },

  ];

}

class MilkItem with ChangeNotifier{

  String image;
   String price;
   String weight;
   String description;
  final ValueNotifier<int> itemCount;
  bool openedStates;
  MilkItem({
    required this.image,
    required this.price,
    required this.weight,
    required this.description,
    this.openedStates=true
  }):itemCount = ValueNotifier<int>(1);
}
class MilkItemList with ChangeNotifier{
  List<MilkItem> milkItems = [
    MilkItem(
        image:
        'https://5.imimg.com/data5/SELLER/Default/2023/5/307757468/YO/AF/VK/21163179/2-l-liquid-packaging-carton-box-500x500.jpg',
        price: '\$ 15',
        weight: '20 mg',
        description: 'Lactaid Fat Free Pure Milk'),
    MilkItem(
      image: 'https://pngimg.com/d/milk_PNG12746.png',
      price: '\$ 15',
      weight: '20 mg',
      description: 'Lactaid Fat Free Pure Milk',
    ),
    MilkItem(
      image:
      'https://p.turbosquid.com/ts-thumb/sX/cj2kre/GXfMFbCd/milkcarton01/png/1488386132/1920x1080/fit_q87/50c99d6ac7dd89d4ccf5439cc012e65338842860/milkcarton01.jpg',
      price: '\$ 15',
      weight: '20 mg',
      description: 'Lactaid Fat Free Pure Milk',
    ),
    MilkItem(
      image:
      'https://p.turbosquid.com/ts-thumb/sX/cj2kre/GXfMFbCd/milkcarton01/png/1488386132/1920x1080/fit_q87/50c99d6ac7dd89d4ccf5439cc012e65338842860/milkcarton01.jpg',
      price: '\$ 15',
      weight: '20 mg',
      description: 'Lactaid Fat Free Pure Milk',
    ),
  ];
}