import 'package:flutter/material.dart';
import 'package:hello_world/RestaurantPage.dart';
import 'package:hello_world/Restaurant_Repository.dart';

import 'Restaurant.dart';

// Carrossel de comidas
class HomeCarroussel extends StatelessWidget {
  const HomeCarroussel({super.key});
  @override
  Widget build(BuildContext context) {
    List<String> itens = ["Sobremesas", "Lanches", "Almoços"];
    return Container(
      padding: const EdgeInsets.only(top: 8, bottom: 8),
      height: 170,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 3,
        itemBuilder: (BuildContext context, index) => Padding(
          padding: const EdgeInsets.only(left: 8, right: 8),
          child: Stack(alignment: AlignmentDirectional.topCenter, children: [
            SizedBox(
              width: 180,
              height: 120,
              child: Card(
                elevation: 1.8,
                color: Colors.grey,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage("assets/images/ImgFoodCards$index.png"),
                    fit: BoxFit.fitWidth,
                  )),
                ),
              ),
            ),
            Positioned(
              bottom: 10,
              child: ConstrainedBox(
                constraints: const BoxConstraints(minWidth: 100),
                child: DecoratedBox(
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(255, 227, 125, 1),
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    child: Center(
                      child: Text(
                        itens[index],
                        style: const TextStyle(
                          color: Color.fromRGBO(5, 31, 50, 1),
                          fontFamily: 'Inter',
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}

// Barra de Pesquisa
class SearchBar extends StatelessWidget {
  const SearchBar({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      height: 90,
      padding: const EdgeInsets.all(20),
      child: TextField(
          maxLines: null,
          minLines: null,
          expands: true,
          decoration: InputDecoration(
              floatingLabelBehavior: FloatingLabelBehavior.never,
              prefixIcon: const Icon(Icons.search, size: 30),
              prefixIconColor: const Color.fromRGBO(255, 227, 125, 1),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: const BorderSide(
                      color: Color.fromRGBO(5, 31, 50, 1), width: 2)),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: const BorderSide(
                      color: Color.fromRGBO(5, 31, 50, 1), width: 2)),
              isDense: true,
              labelText: "Pesquisar",
              labelStyle: const TextStyle(
                color: Color.fromRGBO(5, 31, 50, 0.3),
                fontFamily: 'Inter',
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ))),
    );
  }
}

// Categories
class HomeCarrousselCategories extends StatelessWidget {
  const HomeCarrousselCategories({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> categories = [
      "Comidas regionais",
      "Combos Hambúrguer",
      "Combo casal Açaí"
    ];
    return Container(
      padding: const EdgeInsets.only(top: 8, bottom: 8),
      height: 220,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 3,
        itemBuilder: (BuildContext context, index) => Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Stack(alignment: AlignmentDirectional.topCenter, children: [
            SizedBox(
              width: 280,
              height: 180,
              child: Card(
                elevation: 2.5,
                color: Colors.grey,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    image:
                        AssetImage("assets/images/ImgFoodCategories$index.png"),
                    fit: BoxFit.fitWidth,
                  )),
                ),
              ),
            ),
            Positioned(
              bottom: 5,
              child: ConstrainedBox(
                constraints: const BoxConstraints(minWidth: 100, maxWidth: 120),
                child: DecoratedBox(
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(5, 31, 50, 1),
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    child: Center(
                      child: Text(
                        textAlign: TextAlign.center,
                        categories[index],
                        style: const TextStyle(
                          color: Color.fromRGBO(255, 227, 125, 1),
                          fontFamily: 'Inter',
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}

class HomeCarrousselRestaurants extends StatefulWidget {
  HomeCarrousselRestaurants({Key? key}) : super(key: key);
  final rests = RestaurantRepository.tabela;

  @override
  State<HomeCarrousselRestaurants> createState() => _HomeCarrousselRestaurantsState();
}

class _HomeCarrousselRestaurantsState extends State<HomeCarrousselRestaurants> {
  @override
  Widget build(BuildContext context) {
    
    ShowRest(Restaurant rest){
      Navigator.push(context, MaterialPageRoute(builder: (_) => RestaurantPage(rest: rest)));
    }
    
    return Container(
        alignment: Alignment.centerLeft,
        height: 200,
        width: MediaQuery.of(context).size.width,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 4,
            itemBuilder: (BuildContext context, index) => Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 8, left: 8, right: 8),
                  child: SizedBox(
                    height: 100,
                    width: 100,
                    child: Ink.image(
                        fit: BoxFit.fitWidth,
                        image:
                        AssetImage("assets/images/ImgRest$index.png"),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(180),
                      onTap: (){
                        ShowRest(widget.rests[index]);
                      },
                    ),),
                  ),
                ),
                ConstrainedBox(
                  constraints: BoxConstraints(maxWidth: 80),
                  child: Text(
                    widget.rests[0].name,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Color.fromRGBO(5, 31, 50, 1),
                      fontFamily: 'Inter',
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                )
              ],
            )));
  }
}
