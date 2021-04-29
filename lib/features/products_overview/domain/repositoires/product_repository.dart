import 'package:daca_konya_app/core/outcome/failure.dart';
import 'package:daca_konya_app/core/outcome/success.dart';
import 'package:daca_konya_app/features/products_overview/domain/entities/product.dart';
import 'package:dartz/dartz.dart';

abstract class ProductRepository {
  Either<Failure, List<Product>> getProducts();
  Either<Failure, Success> addProducts(List<Product> products);
}
