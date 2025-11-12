enum ProductCategory {
  snacks('Salgadinhos'),
  softDrinks('Refrigerantes'),
  cleaning('Limpeza'),
  dairy('Laticínios'),
  bakery('Panificados');

  final String displayName;
  const ProductCategory(this.displayName);
}
