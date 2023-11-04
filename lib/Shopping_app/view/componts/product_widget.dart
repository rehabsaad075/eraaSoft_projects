import 'package:eraasoft_projects/BMI_calculate/view/componets/widgets/text_custom.dart';
import 'package:eraasoft_projects/BMI_calculate/view_model/utils/colors.dart';
import 'package:eraasoft_projects/Shopping_app/model/product_model.dart';
import 'package:flutter/material.dart';

class ProductsWidget extends StatelessWidget {
  final ProductsModel productsModel;
  final void Function()? onTap;
  const ProductsWidget({super.key, required this.productsModel, this.onTap});

  @override
  Widget build(BuildContext context) {
    return  Material(
      borderRadius: BorderRadius.circular(10),
      color: AppColors.storeColor,
      child: InkWell(
        onTap: (){},
        borderRadius: BorderRadius.circular(10),
        child: Container(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10)
          ),
          child: Column(
            children: [
              Expanded(
                  flex: 2,
                  child: Image.network(
                    productsModel.image??'',
                    errorBuilder: (context,error,stackTrace){
                      return const Icon(Icons.error,color: Colors.red,);
                    },
                    fit: BoxFit.cover,
                  )),
                Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: AppText(
                                textValue: productsModel.title??'',
                                maxLines: 2,
                            ),
                          ),
                          AppText(
                            textValue: "${productsModel.rating?.rate}",
                            color: AppColors.grey2,
                          ),
                          const Icon(
                            Icons.star,
                            color: Colors.yellow,
                          )
                        ],
                      ),
                      AppText(
                          textValue: "${productsModel.price}EGP"
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
