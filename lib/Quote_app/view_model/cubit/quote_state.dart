part of 'quote_cubit.dart';


abstract class QuoteState {}

class QuoteInitial extends QuoteState {}
class GetQuoteLoadingState extends QuoteState{}

class GetQuoteSuccessState extends QuoteState{}

class GetQuoteErrorState extends QuoteState{}

class FavQuoteLoadingState extends QuoteState{}

class FavQuoteSuccessState extends QuoteState{}

class FavQuoteErrorState extends QuoteState{}

