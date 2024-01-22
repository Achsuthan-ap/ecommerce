import 'package:flutter/material.dart';


class Home1 extends StatefulWidget {
 const  Home1({super.key});

  @override
  _Home1State createState() => _Home1State();
}

class _Home1State extends State<Home1> {
 

  List<Map<String, dynamic>> foods = [
    {
      'name': 'Chicken Briyani',
      'type': 'Briyani',
      'price': 500,
      'imageUrl':
          'https://images.pexels.com/photos/10580198/pexels-photo-10580198.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
    },
    {
      'name': 'Margherita Pizza',
      'type': 'Italian',
      'price': 12.99,
      'imageUrl':
          'https://images.pexels.com/photos/566345/pexels-photo-566345.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
    },
    {
      'name': 'Sushi Platter',
      'type': 'Japanese',
      'price': 18.99,
      'imageUrl':
          'https://images.pexels.com/photos/725992/pexels-photo-725992.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
    },
    {
      'name': 'Classic Burger',
      'type': 'Fast Food',
      'price': 8.99,
      'imageUrl':
          'https://images.pexels.com/photos/566345/pexels-photo-566345.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
    },
    {
      'name': 'Vegetarian Pasta',
      'type': 'Italian',
      'price': 10.99,
      'imageUrl':
          'https://images.pexels.com/photos/725992/pexels-photo-725992.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
    },
    {
      'name': 'Vegetarian Pasta',
      'type': 'Italian',
      'price': 10.99,
      'imageUrl':
          'https://images.pexels.com/photos/725992/pexels-photo-725992.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
    },
    {
      'name': 'Vegetarian Pasta',
      'type': 'Italian',
      'price': 10.99,
      'imageUrl':
          'https://images.pexels.com/photos/725992/pexels-photo-725992.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          centerTitle: true,
          title: const Text(
            "S T A R C O D E R",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView.separated(
                itemCount: foods.length,
                separatorBuilder: (context, index) => const Divider(),
                itemBuilder: (context, index) {
                  Map<String, dynamic> food = foods[index];
                  return Container(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    color: Colors.grey[300],
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(food['imageUrl']),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          width: 100,
                          height: 100,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              food['name'],
                              style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(food['type']),
                            Text('Rs.${food['price']}'),
                          ],
                        ),
                        ElevatedButton(
                          onPressed: null,
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all<Color>(Colors.blue),
                          ),
                          child: const Text(
                            'BUY NOW',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
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
