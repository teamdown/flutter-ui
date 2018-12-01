import 'package:flutter/material.dart';
import 'package:flutter_uikit/model/product.dart';

class ProductViewModel {
  List<Product> productsItems;

  ProductViewModel({this.productsItems});

  getProducts() => <Product>[
        Product(
          description: "Print T-shirt",
          image:
              "https://mosaic02.ztat.net/vgs/media/pdp-zoom/LE/22/1D/02/2A/12/LE221D022-A12@16.1.jpg",
          name: "THE PERFECT",
          price: "€ 19.99",
          quantity: 0,
        ),
        Product(
          description: "Pool sliders",
          image:
              "https://mosaic02.ztat.net/vgs/media/catalog-lg/AD/58/1D/00/9Q/12/AD581D009-Q12@13.jpg",
          name: "AQUALETTE",
          price: "€ £13.49",
        ),
        Product(
          description: "Print T-shirt",
          image:
              "https://mosaic02.ztat.net/vgs/media/pdp-zoom/LE/22/1D/02/2A/12/LE221D022-A12@16.1.jpg",
          name: "THE PERFECT",
          price: "€ 19.99",
          quantity: 0,
        ),
        Product(
          description: "Pool sliders",
          image:
              "https://mosaic02.ztat.net/vgs/media/catalog-lg/AD/58/1D/00/9Q/12/AD581D009-Q12@13.jpg",
          name: "AQUALETTE",
          price: "€ £13.49",
        ),
        Product(
          description: "Print T-shirt",
          image:
              "https://mosaic02.ztat.net/vgs/media/pdp-zoom/LE/22/1D/02/2A/12/LE221D022-A12@16.1.jpg",
          name: "THE PERFECT",
          price: "€ 19.99",
          quantity: 0,
        ),
        Product(
          description: "Pool sliders",
          image:
              "https://mosaic02.ztat.net/vgs/media/catalog-lg/AD/58/1D/00/9Q/12/AD581D009-Q12@13.jpg",
          name: "AQUALETTE",
          price: "€ £13.49",
        ),
        Product(
          description: "Print T-shirt",
          image:
              "https://mosaic02.ztat.net/vgs/media/pdp-zoom/LE/22/1D/02/2A/12/LE221D022-A12@16.1.jpg",
          name: "THE PERFECT",
          price: "€ 19.99",
          quantity: 0,
        ),
        Product(
          description: "Pool sliders",
          image:
              "https://mosaic02.ztat.net/vgs/media/catalog-lg/AD/58/1D/00/9Q/12/AD581D009-Q12@13.jpg",
          name: "AQUALETTE",
          price: "€ £13.49",
        ),
      ];
}
