class Category {
  int cat_id;
  String image;
  String title;

  Category(this.cat_id, this.image, this.title);

  static List<Category> categories = <Category>[
    Category(0, "assets/o1_Group.png", "AC Repair Services"),
    Category(1, "assets/o2_Group.png", "Appliance Repair"),
    Category(2, "assets/o3_Group.png", "Beauty & Salon"),
    Category(3, "assets/o4_Group.png", "Trips & Travels"),
    Category(4, "assets/o5_Group.png", "Car Care Services"),
    Category(5, "assets/o6_Group.png", "Cleaning & Pest"),
    Category(6, "assets/o7_Group.png", "Painting & Renovation"),
    Category(7, "assets/o8_Group.png", "Packing & Shifting")
  ];
}