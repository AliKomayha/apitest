class Item {

  String _name;
  bool _isSelected = false;

  Item(this._name);

  String get name => _name;

  bool get isSelected => _isSelected;

  set setSelected(bool val) {
    this._isSelected = val;
  }
}

List <Item> items=[
  Item("BMW"),
  Item("Mercedes"),
  Item("Toyota"),
  Item("KIA"),

];