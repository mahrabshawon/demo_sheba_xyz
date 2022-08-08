class SubCategory {
  int serID;
  int catID;
  String image;
  String title;
  String details;

  SubCategory(this.serID, this.image, this.title, this.catID, this.details);

  static List<SubCategory> subCategories = <SubCategory>[
    SubCategory(0, "assets/bestdeal.png", "AC Repair Services", 0, ""),
    SubCategory(1, "assets/bestdeal.png", "Appliance Repair", 0, ""),
    SubCategory(2, "assets/bestdeal.png", "Beauty  & Salon", 0, " "),
    SubCategory(3, "assets/bestdeal.png", "Trips & Travels", 2, ""),
    SubCategory(4, "assets/bestdeal.png", "Car Care Services", 3, ""),
    SubCategory(5, "assets/Frame4.png", "Cleaning & Pest", 2, ""),
    SubCategory(6, "assets/Frame10.png", "Painting & Renovation", 3, ""),
    SubCategory(7, "assets/Frame10.png", "Packing &  Shifting", 3, ""),
    SubCategory(8, "assets/Frame4.png", "Cleaning & Pest", 2, ""),
    SubCategory(9, "assets/Frame10.png", "Painting & Renovation", 3, ""),
    SubCategory(10, "assets/Frame10.png", "Packing &  Shifting", 3, ""),
  ];
}