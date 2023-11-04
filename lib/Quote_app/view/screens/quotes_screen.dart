import 'package:eraasoft_projects/BMI_calculate/view/componets/widgets/text_custom.dart';
import 'package:eraasoft_projects/BMI_calculate/view_model/utils/colors.dart';
import 'package:eraasoft_projects/Quote_app/view_model/cubit/quote_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../componets/quotes_widget.dart';

class QuotesScreen extends StatelessWidget {
  const QuotesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.background,
        title: const Row(
          children: [
            Icon(Icons.format_quote_sharp),
            SizedBox(width: 15,),
            AppText(
              textValue: 'Quotes',

            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: const BorderSide(
                        color: AppColors.background
                    )
                ),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: const BorderSide(
                        color: AppColors.background
                    )
                ),
                labelText: 'search',
                prefixIcon: const Icon(Icons.search)
              ),
              controller: QuoteCubit.get(context).searchController,
              onFieldSubmitted: (value){
                QuoteCubit.get(context).getQuotes();
              },
            ),
            const SizedBox(height: 15,),
            Expanded(
              child: BlocConsumer<QuoteCubit, QuoteState>(
                listener: (context, state) {},
                builder: (context, state) {
                  var cubit=QuoteCubit.get(context);
                  return cubit.quotes.isEmpty?const Center(child: CircularProgressIndicator()):ListView.separated(
                    physics: const BouncingScrollPhysics(),
                      itemBuilder: (context, index) =>  QuotesWidget(
                          quote:cubit.quotes[index],
                        onPressed: (){
                            cubit.favQuote(quoteId: cubit.quotes[index].id??0);
                        },
                      ),
                      separatorBuilder: (context, index) => const SizedBox(height: 10,),
                      itemCount: cubit.quotes.length
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
