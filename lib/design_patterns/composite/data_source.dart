import 'package:flutter_design_patterns_example/common/util/extension.dart';

import 'composite.dart';

class ComponentDataSource {
  static List<Component> categories = [
    Category(
      name: 'Thời trang',
      children: [
        Category(
          name: 'Thời trang nam',
          children: [
            Product(
              name: 'Quần què',
              price: 1000000,
            ),
            Product(
              name: 'Quần tây',
              price: 200000,
            ),
          ],
        ),
        Category(
          name: 'Thời trang nữ',
          children: [
            Product(
              name: 'Váy bầu',
              price: 500000,
            ),
            Product(
              name: 'Quần ống suông',
              price: 1000000,
            ),
          ],
        ),
        Product(
          name: "Áo mưa siêu nhân",
          price: 100000,
        ),
      ],
    ),
  ];
}

extension ComponentExtension on List<Component> {
  String getTotalPriceFormatted() {
    final totalPrice = fold<double>(
      0,
      (prev, element) => prev + element.getPrice(),
    );

    return totalPrice.formatVND();
  }
}
