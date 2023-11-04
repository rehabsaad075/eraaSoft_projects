import 'package:eraasoft_projects/BMI_calculate/view/componets/widgets/text_custom.dart';
import 'package:eraasoft_projects/BMI_calculate/view_model/utils/colors.dart';
import 'package:eraasoft_projects/Shopping_app/view/componts/category_widget.dart';
import 'package:eraasoft_projects/Shopping_app/view/componts/product_widget.dart';
import 'package:eraasoft_projects/Shopping_app/view_model/cubit/store/store_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class StoreHomeScreen extends StatelessWidget {
  const StoreHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: StoreCubit.get(context)..getCategories()..getProducts(),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.storeColor,
          elevation: 0,
          title: const AppText(
            textValue: 'Shopping app',
            color: AppColors.black,
          ),
          iconTheme: const IconThemeData(
              color: AppColors.pink
          ),
        ),
        body: ListView(
          padding: const EdgeInsets.all(8),
          children: [
            const AppText(
              textValue: 'Categories',
              color: AppColors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            const SizedBox(height: 8,),
            SizedBox(
              height: 70,
              child: BlocBuilder<StoreCubit, StoreState>(
                    builder: (context, state) {
                       return ListView.separated(
                          scrollDirection: Axis.horizontal,
                           itemBuilder: (context, index) =>
                               CategoryWidget(
                                 onTap: () {},
                                 categoryName: StoreCubit.get(context).categories[index],
                      ),
                           separatorBuilder: (context, index) =>
                           const SizedBox(width: 5,),
                          itemCount: StoreCubit.get(context).categories.length
              );
      },
   ),
            ),
            const SizedBox(height: 8,),
            const AppText(
              textValue: 'Products',
              color: AppColors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            const SizedBox(height: 8,),
            BlocConsumer<StoreCubit, StoreState>(
              listener: (context, state) {},
              builder: (context, state) {
                  return GridView.count(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: 2,
              mainAxisSpacing: 15,
              crossAxisSpacing: 15,
              childAspectRatio: 1/1.2,
              children: List.generate(
                      StoreCubit.get(context).products.length,
                      (index) => ProductsWidget(
                          productsModel:StoreCubit.get(context).products[index] ,
                      )),

            );
                },
            )
            //GridView.count(crossAxisCount: 2)
          ],
        ),
      ),
    );
  }
}
