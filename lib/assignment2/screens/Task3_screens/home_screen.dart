
import 'package:flutter/material.dart';

import '../../componets/task3_componets/build_gridview_item.dart';
import '../../models/gridView_model.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
final List<GridViewModel> items=const[
  GridViewModel(
      image: 'assets/images/gridViewImages/home improvement.jpg',
      titleText: 'DIY and home improvement'
  ),
  GridViewModel(
      image: 'assets/images/gridViewImages/home decors.jpg',
      titleText: 'Home Decor'
  ),
  GridViewModel(
      image: 'assets/images/gridViewImages/food and drink image.jpg',
      titleText: 'Food and Drink'
  ),
  GridViewModel(
      image: 'assets/images/gridViewImages/humar image.jpg',
      titleText: 'Humor'
  ),
  GridViewModel(
      image: 'assets/images/gridViewImages/tavel image.jpg',
      titleText: 'Travel'
  ),
  GridViewModel(
      image: 'assets/images/gridViewImages/technology image.jpg',
      titleText: 'Technology'
  ),
  GridViewModel(
      image: 'assets/images/gridViewImages/men fashion.jpg',
      titleText: 'Men\'s fashion'
  ),
  GridViewModel(
      image: 'assets/images/gridViewImages/art image.jpg',
      titleText: 'Art'
  ),
  GridViewModel(
      image: 'assets/images/gridViewImages/design image.jpg',
      titleText: 'Design'
  ),
  GridViewModel(
      image: 'assets/images/gridViewImages/photography.jpg',
      titleText: 'Photography'
  ),
  GridViewModel(
      image: 'assets/images/gridViewImages/tattoos.jpg',
      titleText: 'Tattoos and body art'
  ),
  GridViewModel(
      image: 'assets/images/gridViewImages/funny.jpg',
      titleText: 'Funny Picture'
  ),
  GridViewModel(
      image: 'assets/images/gridViewImages/gardening.jpg',
      titleText: 'Gardening'
  ),
  GridViewModel(
      image: 'assets/images/gridViewImages/quotes.jpg',
      titleText: 'Quotes'
  ),
  GridViewModel(
      image: 'assets/images/gridViewImages/animals.jpg',
      titleText: 'Animals'
  ),
  GridViewModel(
      image: 'assets/images/gridViewImages/flowers.jpg',
      titleText: 'Flowers'
  ),
  GridViewModel(
      image: 'assets/images/gridViewImages/colors.jpg',
      titleText: 'Colors'
  ),
  GridViewModel(
      image: 'assets/images/gridViewImages/cars.jpg',
      titleText: 'Cars'
  ),
];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    'Welcome to Pinterest',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey[800]
                    ),
                  ),
                  const SizedBox(width: 45,),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(5)
                    ),
                    alignment: Alignment.center,
                    height: 30,
                    width: 50,
                    child: Text(
                      'Next',
                      style: TextStyle(
                        color: Colors.grey[600]
                      ),
                    ),
                  )
                ],
              ),
              Text(
                'Pick 5 or more topics',
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.grey[600]
                ),
              ),
              const SizedBox(height: 25,),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4),
                  child: GridView.builder(
                      gridDelegate:  const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                        crossAxisSpacing: 15,
                        mainAxisSpacing: 15,
                      ),
                      itemBuilder: (context,index)=>
                       BuildGridViewItem(model:items[index],),
                    itemCount: items.length,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
