import 'package:thymium/thymium.dart' as thymium;

void compiled(node) {
  node.generate({}).open();
}

void main() {
  thymium.compileString('<window backgroundColor="blue"></window>', compiled);
}