import 'package:bloc/bloc.dart';
import 'package:eraasoft_projects/Quote_app/model/quote_model.dart';
import 'package:eraasoft_projects/Quote_app/view_model/data/network/dioHelper.dart';
import 'package:eraasoft_projects/Quote_app/view_model/data/network/endPoints.dart';
import 'package:eraasoft_projects/Quote_app/view_model/utils/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


part 'quote_state.dart';

class QuoteCubit extends Cubit<QuoteState> {
  QuoteCubit() : super(QuoteInitial());

static QuoteCubit get(context)=> BlocProvider.of<QuoteCubit>(context);
  TextEditingController searchController=TextEditingController();


  List<Quote>quotes=[];

  Future<void>getQuotes()async {
    emit(GetQuoteLoadingState());
    await DioHelper.get(
        endPoint: EndPoints.quotes,
        token: Constant.token,
        parameters: {
          if(searchController.text.isNotEmpty)
          'filter':searchController.text
        }
    ).then((value) {
      quotes.clear();
      print(value.data);
      for(var q in value.data['quotes']){
        Quote quote=Quote.fromJson(q);
        quotes.add(quote);
      }
      emit(GetQuoteSuccessState());
    }).
    catchError((error){
      print(error);
      emit(GetQuoteErrorState());
    });

  }

  Future<void>favQuote({required int quoteId})async {
    emit(FavQuoteLoadingState());
   await DioHelper.put(
       endPoints: '${EndPoints.quotes}/$quoteId/${EndPoints.favQuotes}',
       token: Constant.token
   ).then((value) {
quotes.where((element) => element.id==quoteId).first.isFav=true;
     emit(FavQuoteSuccessState());
   }).catchError((error){
     emit(FavQuoteErrorState());
   });
  }
}
