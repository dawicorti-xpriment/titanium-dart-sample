import 'package:titanium-element/el.dart';

void main() {
  el('window')
    .attr('backgroundColor', 'white')
    .append(
      el('label')
        .attr('text', 'Hello World !')
    )
    .open();
}