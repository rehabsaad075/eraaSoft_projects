part of 'store_cubit.dart';


abstract class StoreState {}

class StoreInitial extends StoreState {}

class GetCategoriesLoadingState extends StoreState{}
class GetCategoriesSuccessState extends StoreState{}
class GetCategoriesErrorState extends StoreState{}

class GetProductsLoadingState extends StoreState{}
class GetProductsSuccessState extends StoreState{}
class GetProductsErrorState extends StoreState{}