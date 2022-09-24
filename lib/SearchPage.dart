import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:subspace3/const.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kcolor,
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 100,
        backgroundColor: kcolor,
        title: const CupertinoSearchTextField(
          backgroundColor: kcolor1,
        ),
      ),
      body: SingleChildScrollView(
        child: Card(
          elevation: 10,
          child: Container(
            width: MediaQuery.of(context).size.width,
            color: kcolor1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      TitleContainer(text: 'Shows'),
                      Spacer(),
                       const Text("more",
                      style: TextStyle(color: Colors.white,
                      fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 270,
                 
                  child: showsListWidget(),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: TitleContainer(
                    text: "Subscription",
                  ),
                ),
                Container(
                  height: 150,
                  child: ListView.builder(
                    itemCount: 2,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                              color: kcolor,
                              borderRadius: BorderRadius.circular(5)),
                          height: 60,
                          width: MediaQuery.of(context).size.width * 0.7,
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.network(
                                    "https://about.netflix.com/images/meta/netflix-symbol-black.png",
                                    height: 22,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              Center(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Text(
                                      "Netflix",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                      ),
                                    ),
                                    Text(
                                      "4.5⭐",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Spacer(),
                              Container(
                                decoration: const BoxDecoration(
                                    color: Colors.blue, shape: BoxShape.circle),
                                child: const Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      TitleContainer(text: "Products",),
                       Spacer(),
                       const Text("more",
                      style: TextStyle(color: Colors.white,
                      fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 130,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 4,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          //height: 40,
                          width: 100,
                          decoration: BoxDecoration(
                            color: kcolor,
                            borderRadius: BorderRadius.circular(5)
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.network("https://www.eurekaforbes.com/media/catalog/product/cache/5dacb12e56b80562394993655c6849d4/a/q/aquasure-desire-ro-uv-mtds-water-purifier-front2_1.png",
                              height: 50,),
                              const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text("DrinkPrime",
                                style: TextStyle(color: Colors.white,
                                fontWeight: FontWeight.w500),),
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TitleContainer extends StatelessWidget {
  final String? text;
  TitleContainer({this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text!,
      style: const TextStyle(
          color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
    );
  }
}

class showsListWidget extends StatelessWidget {
  const showsListWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 3,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              color: kcolor,
              borderRadius: BorderRadius.circular(10),
            ),
            width: 130,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.all(7.0),
                  child: Text(
                    "The Spider man",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w500),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.network(
                    "https://about.netflix.com/images/meta/netflix-symbol-black.png",
                    height: 150,
                    fit: BoxFit.fitHeight,
                  ),
                ),
                Row(
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.network(
                              "https://about.netflix.com/images/meta/netflix-symbol-black.png",
                              height: 22,
                              //width: 30,
                            ),
                          ),
                        ),
                        const Text(
                          "60 rs",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.network(
                              "https://about.netflix.com/images/meta/netflix-symbol-black.png",
                              height: 22,
                            ),
                          ),
                        ),
                        const Text(
                          "60 rs",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
