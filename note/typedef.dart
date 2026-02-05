typedef Calander = int Function(int a, int b);

int add(int a, int b) {
  return a + b;
}

void main() {
  Calander cal = add;
  print(cal(10, 10));
}
