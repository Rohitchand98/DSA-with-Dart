void main() {
  int a = 5;
  int b = 10;

  //Plus minus method
  // a = a + b; // a becomes 15
  // b = a - b; // b becomes 5
  // a = a - b; // a becomes 10
  // print("This is swapped by plus minus method, a = $a, b = $b");

  //using temp variable(the best method)
  // int? c;
  // c = b;
  // b = a;
  // a = c;
  // print("This is swapped using temp variable, a = $a, b = $b");

  //using XOR to swapped values
  a = a ^ b; // a becomes 15
  b = a ^ b; // b becomes 5
  a = a ^ b; // a becomes 10

  /* Great example — you’re looking at the **XOR swap algorithm**, which swaps two numbers without using a temporary variable. Let’s break it down step by step:

      Suppose initially:
      - \(a = 10\)  
      - \(b = 5\)

      ### Step 1
      ```dart
      a = a ^ b;  // a = 10 ^ 5 = 15
      ```
      XOR compares bits:
      10=1010, 5=0101
      1010⊕0101=1111
      (which is 15).
      Now: 
      𝑎=15, 𝑏=5.

      ### Step 2
      ```dart
      b = a ^ b;  // b = 15 ^ 5 = 10
      ```
      -15=1111, 5=0101
      1111⊕0101=1010
      (which is 10).
      Now: 
      𝑎=15, 𝑏=10.

      ### Step 3
      ```dart
      a = a ^ b;  // a = 15 ^ 10 = 5
      ```
      15=1111, 10=1010  
      1111⊕1010=0101
      (which is 5).
      Now: 
      𝑎=5, 𝑏=10.

      So the values of **a and b are swapped** without using a temporary variable.

      This works because XOR has two key properties:
      𝑥⊕𝑥=0
      𝑥⊕0=𝑥
      It’s reversible: 𝑥⊕𝑦⊕𝑦=𝑥.
      Would you like me to also show you a **visual bit-by-bit table** of how each XOR operation works, so you can see the flipping more clearly?*/
  print("This is swapped by XOR method, a = $a, b = $b");


}
