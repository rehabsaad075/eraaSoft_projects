import 'package:dio/dio.dart';
import 'package:eraasoft_projects/BMI_calculate/view/componets/widgets/text_custom.dart';
import 'package:eraasoft_projects/Quote_app/model/quote_model.dart';
import 'package:eraasoft_projects/Quote_app/view_model/data/network/dioHelper.dart';
import 'package:flutter/material.dart';

import '../../view_model/data/network/endPoints.dart';

class QuoteHomeScreen extends StatefulWidget {
  const QuoteHomeScreen({Key? key}) : super(key: key);

  @override
  State<QuoteHomeScreen> createState() => _QuoteHomeScreenState();
}

class _QuoteHomeScreenState extends State<QuoteHomeScreen> {
  Quote? quote;
  String? todayQuote;
  @override
  void initState()  {
    super.initState();
    callApi();
  }
  Future<void> callApi() async {
    final Response response = await DioHelper.get(
      endPoint: EndPoints.quoteOfTheDay,
    );
    print(response);
    quote = Quote.fromJson(response.data);
    setState(() {
      todayQuote = quote?.body;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const AppText(
          textValue: 'Quote app',
        ),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(12),
          width: 300,
          height: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.lightBlueAccent
          ),
          child:  Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppText(
                textValue: quote?.body ??'',
                color: Colors.black,
                fontSize: 20,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 15,),
              const Icon(
                Icons.format_quote_sharp,
                size: 50,
              )
            ],
          ),
        )
      ),
    );
  }
}
