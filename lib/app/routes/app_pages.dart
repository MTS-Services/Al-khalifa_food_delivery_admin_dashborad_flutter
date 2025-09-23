import 'package:get/get.dart';

import '../modules/addproduct/bindings/addproduct_binding.dart';
import '../modules/addproduct/views/add_product_view.dart';
import '../modules/homepage/bindings/homepage_binding.dart';
import '../modules/homepage/views/homepage_view.dart';
import '../modules/menu/bindings/menu_binding.dart';
import '../modules/menu/views/menu_view.dart';
import '../modules/product_category/bindings/product_category_binding.dart';
import '../modules/product_category/views/product_category_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOMEPAGE;

  static final routes = [
    GetPage(
      name: _Paths.HOMEPAGE,
      page: () => const HomepageView(),
      binding: HomepageBinding(),
    ),
    GetPage(
      name: _Paths.ADDPRODUCT,
      page: () => const AddProductView(),
      binding: AddproductBinding(),
    ),
    GetPage(
      name: _Paths.PRODUCT_CATEGORY,
      page: () => const ProductCategoryView(),
      binding: ProductCategoryBinding(),
    ),
    GetPage(
      name: _Paths.MENU,
      page: () => const MenuView(),
      binding: MenuBinding(),
    ),
  ];
}
