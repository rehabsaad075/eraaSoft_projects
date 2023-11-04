import 'dart:convert';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:eraasoft_projects/Quote_app/view_model/data/network/dioHelper.dart';
import 'package:eraasoft_projects/Quote_app/view_model/data/network/endPoints.dart';
import 'package:eraasoft_projects/Shopping_app/model/product_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


part 'store_state.dart';

class StoreCubit extends Cubit<StoreState> {
  StoreCubit() : super(StoreInitial());
  static StoreCubit get(context)=>BlocProvider.of<StoreCubit>(context);


  List<String>categories=[];
  Future<void>getCategories()async{
    emit(GetCategoriesLoadingState());
    await DioHelper.get(
        endPoint: '${EndPoints.products}/${EndPoints.categories}'
    ).then((value) {
      if(value.data != null){
        categories=value.data.cast<String>();
      }
      print(value.data);
      emit(GetCategoriesSuccessState());
    }).catchError((error){
      print(error);
      emit(GetCategoriesErrorState());
      throw error;
    });
  }

  List<ProductsModel>products=[];
  Future<void>getProducts()async {
    emit(GetProductsLoadingState());
    await DioHelper.get(
        endPoint: EndPoints.products
    ).then((value) {
      //print(value.data);
      log(jsonEncode(value.data));
      products.clear();
      for(var i in value.data){
        ProductsModel product=ProductsModel.fromJson(i);
        products.add(product);
      }
      emit(GetProductsSuccessState());
    }).catchError((error){
      print(error);
      emit(GetProductsErrorState());
    });
  }
}
