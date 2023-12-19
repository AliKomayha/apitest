class Item{
  final String _name;
  final double _price;
  final String _imageUrl;
  Item( this._name, this._price, this._imageUrl);

  String get name => _name;
  double get price => _price;
  String get imageUrl => _imageUrl;

  @override
  String toString(){
    return "Price: \$$_price $name";
  }
}

List <Item> items=[
  Item('Burger',7,"https://plus.unsplash.com/premium_photo-1667682209935-b6c87cced668?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8YnVyZ2VyfGVufDB8fDB8fHww"),
  Item('Pizza',10,"https://images.unsplash.com/photo-1513104890138-7c749659a591?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
  Item('Salad',5,"https://images.unsplash.com/photo-1512621776951-a57141f2eefd?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
  Item('Fresh Juice',6,"https://images.unsplash.com/photo-1579954115545-a95591f28bfc?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),

];

