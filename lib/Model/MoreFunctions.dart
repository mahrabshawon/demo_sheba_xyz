class Category {
  int cat_id;
  String image;
  String title;

  Category(this.cat_id, this.image, this.title);

  static List<Category> categories = <Category>[
    Category(0, "assets/acc-icon.png", "Your Profile"),
    Category(1, "assets/Saved-Address.png", "Saved Address"),
    Category(2, "assets/Service-Request.png", "Service Request"),
    Category(3, "assets/Orders.png", "Orders"),
    Category(4, "assets/Promo-Codes.png", "Promo Codes"),
    Category(5, "assets/Refer.png", "Refer & Get Discount"),
    Category(6, "assets/offers.png", "Offers"),
  ];
}
