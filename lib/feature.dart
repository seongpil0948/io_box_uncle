// >>> built in parentheses(Record collection) >>>
// (String, double) getTagPrice(int tagId)  => return ("tag", 1000)
// (String, double) getTagPrice(int tagId) {
//   final tagName = "tag"
//   final price = 2000
//   return (tagName, price)
// }
// void main() {
// var (tagName, price) getTagPrice(2000)
// }
// <<< built in parentheses(Record collection) <<<

// >>> this allow us to read out the unique field of each type >>>
// abstract class Shape {
//   double calcArea();
// }

// class Square implements Shape {
//   final double length;
// }
// class Circle implements Shape {
//   final double radius;
// }


// double calcArea(Shape shape) {
//   return switch (shape) {
//     Square (length: var l) => l * l,
//     Circle (radius: var r) => 3.14 * r * r,

//   }
// }