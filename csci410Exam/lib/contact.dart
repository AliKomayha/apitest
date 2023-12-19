class Contact{

  String name;
  String email;
  String phone;
  String image;

  Contact(this.name, this.email, this.phone, this.image);


  @override
  String toString() {
    return """
        Name: $name
        Email: $email
        Phone: $phone
        """;
  }
}

List<Contact> contacts=[
  Contact("Mohamad Mouazen", "mohamad.mouazen@liu.edu.lb", "03111111", "assets/mouazen.png"),
  Contact("Bilal Kanso", "bilal.kanso@liu.edu.lb", "70333333", "assets/kanso.png"),
  Contact("Ihab Sbeity", "ihab.sbeity@liu.edu.lb", "76444444", "assets/sbeity.png"),
  Contact("Ali Choumane", "ali.choumane@liu.edu.lb", "03222222", "assets/choumane.png"),
];