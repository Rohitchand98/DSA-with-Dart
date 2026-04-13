import 'dart:io';

void main() {
  int rows = 5; // pyramid height

  print("Top-to-Bottom Pyramid:");
  for (int i = 1; i <= rows; i++) {
    // spaces
    for (int j = 1; j <= rows - i; j++) {
      stdout.write(" ");
    }
    // stars
    for (int k = 1; k <= (2 * i - 1); k++) {
      stdout.write("*");
    }
    print("");
  }
  for (int i = rows; i >= 1; i--) {
    // spaces
    for (int j = 1; j <= rows - i; j++) {
      stdout.write(" ");
    }
    // stars
    for (int k = 1; k <= (2 * i - 1); k++) {
      stdout.write("*");
    }
    print("");
  }
}
