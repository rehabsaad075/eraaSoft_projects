import 'package:eraasoft_projects/BMI_calculate/view/componets/widgets/text_custom.dart';
import 'package:eraasoft_projects/BMI_calculate/view_model/utils/colors.dart';
import 'package:eraasoft_projects/Quote_app/model/quote_model.dart';
import 'package:flutter/material.dart';

class QuotesWidget extends StatelessWidget {
  final Quote quote;
  final void Function()? onPressed;
  const QuotesWidget({super.key, required this.quote, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(
          color: AppColors.background
        )
      ),
      child:  Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppText(
                    textValue: quote.body??'',
                  color: AppColors.background,
                  fontSize: 18,
                ),
                const SizedBox(height: 10,),
                AppText(
                  textValue: quote.author??'',
                  color: AppColors.background,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ],
            ),
          ),
          Column(
            children: [
              IconButton(
                  onPressed: onPressed,
                  icon: const Icon(
                    Icons.favorite_border,
                    color: Colors.red,
                  )
              ),
              AppText(
                  textValue: quote.favoritesCount.toString(),
                color: AppColors.grey,
              )
            ],
          )
        ],
      ),
    );
  }
}
