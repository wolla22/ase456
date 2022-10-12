// Boolean operations
void operation1() {
  // bitwise operation
  print(0xFFFF & 0x00FF); // bit and => 0xFF -> 255
  print(0x00FF | 0xFF00); // bit or => 0xFFFF -> 65535
  print(0xFFFF | 0x0000); // exclusive or => 0xFFFF -> 65535
  print(~0x0000); // bit inversion => 0xFFFF -> 65535
  print(~0); // integer is 8 bytes 0xFFFFFFFF -> 4294967295
  print(0x0001 << 2); // shift left 1 * 2^2 => 0x0004 -> 4
  print((0x0001 << 2) >> 2); // 1 -> 4 -> 1
}

// logic operation
void operation2() {
  bool b1, b2;
  b1 = true; b2 = false;
  print(b1 && b2); // false
  print(b1 || b2); // true
  print(b1 ^ b2); // xor -> true 
  print(!b2); // not -> true
}

void main() {
  operation1();
  operation2();
}