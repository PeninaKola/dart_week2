void main() {
  // List of item prices in the shopping cart
  List<double> itemPrices = [5.99, 15.49, 8.99, 12.99, 20.00];

  // Calculate the total price with optional tax
  double total = calculateTotal(itemPrices, taxRate: 0.07);
  print('Total Price (with tax): \$${total.toStringAsFixed(2)}');

  // Use an anonymous function to filter out items below $10
  List<double> filteredPrices = itemPrices.where((price) => price >= 10).toList();
  print('Filtered Prices (items \$10 and above): $filteredPrices');

  // Apply a discount function
  double discountPercentage = 10; // 10% discount
  List<double> discountedPrices = applyDiscount(itemPrices, (price) {
    return price * (1 - discountPercentage / 100);
  });
  print('Prices after discount: $discountedPrices');

  // Calculate final price after applying the factorial discount
  double finalPrice = calculateTotal(discountedPrices, taxRate: 0.07);
  print('Final Price (with tax): \$${finalPrice.toStringAsFixed(2)}');

  // Special discount based on the factorial of the number of items
  double specialDiscountPercentage = calculateFactorialDiscount(itemPrices.length);
  double finalPriceWithSpecialDiscount = finalPrice * (1 - specialDiscountPercentage / 100);
  print('Final Price after special discount: \$${finalPriceWithSpecialDiscount.toStringAsFixed(2)}');
}