class Category {
  String image;
  String title;
  Category(this.image, this.title);
  static List<Category> categories = <Category>[
    Category("assets/o1_Group.png", "AC Repair\nServices"),
    Category("assets/o2_Group.png", "Appliance\nRepair"),
    Category("assets/o3_Group.png", "Beauty \n& Salon"),
    Category("assets/o4_Group.png", "Trips &\nTravels"),
    Category("assets/o5_Group.png", "Car Care\nServices"),
    Category("assets/o6_Group.png", "Cleaning\n& Pest"),
    Category("assets/o7_Group.png", "Painting &\nRenovation"),
    Category("assets/o8_Group.png", "Packing & \nShifting")
  ];
}
