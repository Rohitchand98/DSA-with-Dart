void main() {
  // Shopping cart with products
  List<Map<String, dynamic>> shoppingCart = [
    {'name': 'Laptop', 'price': 999.99, 'quantity': 1},
    {'name': 'Headphones', 'price': 59.99, 'quantity': 2},
    {'name': 'Mouse', 'price': 24.99, 'quantity': 1},
    {'name': 'Keyboard', 'price': 49.99, 'quantity': 1},
  ];

  // Test the findProduct function
  Map<String, dynamic>? foundProduct = findProduct(shoppingCart, 'Headphones');
  if (foundProduct != null) {
    print(
      'Found: ${foundProduct['name']} - \$${foundProduct['price']} (Quantity: ${foundProduct['quantity']})',
    );
  } else {
    print('Product not found');
  }

  // Test with a product that doesn't exist
  foundProduct = findProduct(shoppingCart, 'Monitor');
  if (foundProduct != null) {
    print(
      'Found: ${foundProduct['name']} - \$${foundProduct['price']} (Quantity: ${foundProduct['quantity']})',
    );
  } else {
    print('Product not found');
  }
}

Map<String, dynamic>? findProduct(
  List<Map<String, dynamic>> cart,String productName,) {
  for (var product in cart) {
    if (product['name'] == productName) {
      return product;
    }
  }
  return null;

}
