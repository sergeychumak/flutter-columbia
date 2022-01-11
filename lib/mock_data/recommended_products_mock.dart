class RecommendedProduct {
  String urlImage;
  String name;
  String category;
  int price;
  RecommendedProduct(
    this.urlImage,
    this.name,
    this.category,
    this.price,
  );
}

List<RecommendedProduct> recommendedProducts() {
  List<RecommendedProduct> res = [];
  res.add(RecommendedProduct(
      '52032690299', 'Nike Sportswear Heritage', 'Рюкзак', 3299));
  res.add(
      RecommendedProduct('52557290299', 'Adidas Sonic Beani', 'Рюкзак', 3299));
  res.add(RecommendedProduct('56638600299', 'PUMA Classics', 'Рюкзак', 3299));
  res.add(RecommendedProduct(
      '57595550299', 'The North Face 1980 Hoodoo Re_Edition', 'Рюкзак', 3299));
  return res;
}
