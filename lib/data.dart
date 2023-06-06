import 'dart:math' as math;

sealed class Shape {
  double calculateArea() {
    final self = this;
    switch (self) {
      case Square():
        return self.length * self.length;
      case Circle():
        return math.pi * self.radius * self.radius;
    }
  }

  double test() {
    final self = this;
    switch (self) {
      case Square(length: final l):
        return l * l;
      case Circle(radius: final r):
        return math.pi * r * r;
    }
  }

  double test2() {
    final self = this;
    switch (self) {
      case Square(:final length):
        return length * length;
      case Circle(:final radius):
        return math.pi * radius * radius;
    }
  }
}

class Square extends Shape {
  final double length;
  Square(this.length);
}

class Circle extends Shape {
  final double radius;
  Circle(this.radius);
}
