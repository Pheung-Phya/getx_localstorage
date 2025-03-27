import 'package:get/get.dart';
import 'package:getx_route/models/product.dart';
import 'package:getx_route/services/db_helper.dart';

class ProductController extends GetxController {
  var productList = <Product>[].obs;
  final DBHelper dbHelper = DBHelper();

  @override
  void onInit() {
    super.onInit();
    loadProducts();
  }

  void loadProducts() async {
    productList.value = await dbHelper.getProducts();
  }

  void addProduct(Product product) async {
    await dbHelper.insertProduct(product);
    loadProducts();
  }

  void updateProduct(Product product) async {
    await dbHelper.updateProduct(product);
    loadProducts();
  }

  void deleteProduct(int id) async {
    await dbHelper.deleteProduct(id);
    loadProducts();
  }
}
