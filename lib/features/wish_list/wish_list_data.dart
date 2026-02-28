

class Favorite {
  Favorite({
    required this.itemName,
    required this.price,
    required this.img,
    required this.isSelected,
  });

  final String? itemName;
  final double? price;
  final String? img;
  final bool isSelected;
}
  List<Favorite> favorite = [
  
    Favorite(
      itemName: "Nike Fuel Pack",
      price: 32.0,
      img: 'assets/images/nikebag.png',
      isSelected: true,
    ),
    
    Favorite(
      itemName: "Nike Show X Rush", 
      price: 204.0, 
      img: 'assets/images/nikeshow.png', 
      isSelected: true,
      ),
    
    Favorite(
      itemName: "Men's T shirt", 
      price: 45.0, 
      img: 'assets/images/nikefill.png', 
      isSelected: true),
    
    Favorite(
      itemName: "Men's Skate T-Shirt", 
      price: 45.0, 
      img: 'assets/images/niketshirt.png', 
      isSelected: true),
  ];

