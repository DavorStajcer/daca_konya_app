import 'package:daca_konya_app/core/outcome/failure.dart';
import 'package:daca_konya_app/core/outcome/success.dart';
import 'package:daca_konya_app/features/products_overview/domain/entities/product.dart';
import 'package:dartz/dartz.dart';

abstract class OrdersRepository {
  Either<Failure, List<Product>> getOrders();
  Either<Failure, Success> addOrders(List<Product> products);
  Either<Failure, Success> removeOrder(List<Product> products);
}
