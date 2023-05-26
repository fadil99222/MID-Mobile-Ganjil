import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget recentcard(int index) => Container(
      width: 200,
      decoration: BoxDecoration(
        color: Colors.amber,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(color: Colors.grey, blurRadius: 10, spreadRadius: 2)
        ],
        image: DecorationImage(
            image: AssetImage('images/img1.jpg'), fit: BoxFit.fill),
      ),
      clipBehavior: Clip.antiAlias,
      child: Container(
        padding: EdgeInsets.only(left: 10, top: 10),
        margin: EdgeInsets.only(top: 110),
        width: double.infinity,
        height: 80,
        color: Color.fromARGB(134, 0, 0, 0),
        child: Text(
          'Recent view',
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ));
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Container(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.arrow_back,
                      color: Colors.grey,
                    ),
                    Icon(
                      Icons.favorite,
                      color: Colors.grey,
                    )
                  ]),
            ),
            backgroundColor: Colors.transparent,
            elevation: 0,
          ),
          body: SingleChildScrollView(
            child: Column(children: [
              //bagian 1
              Container(
                padding: EdgeInsets.all(10),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //gambar
                      Container(
                        width: double.infinity,
                        height: 200,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                              image: AssetImage('images/img1.jpg'),
                              fit: BoxFit.cover,
                            )),
                      ),
                      //name item harga
                      Container(
                        margin: EdgeInsets.only(top: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Barang1',
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                            Text('\$30',
                                style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.amber))
                          ],
                        ),
                      ),
                      //item
                      Container(
                        alignment: Alignment.centerLeft,
                        width: 200,
                        child: Text(
                          'Laboris aute anim ex Lorem sit qui nisi fugiat sint ad. Eiusmod commodo laborum et amet proident mollit incididunt aliqua ut occaecat sit laborum. Tempor laborum esse laboris laboris aliquip nulla veniam ex reprehenderit velit veniam deserunt est reprehenderit. Consequat labore mollit sit in proident consequat mollit voluptate cillum. Fugiat veniam dolor magna mollit excepteur reprehenderit enim ex. Dolore sunt adipisicing ex ipsum commodo irure. Occaecat proident ut aliqua officia consectetur.',
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                        ),
                      ),
                      // rating
                      Container(
                        margin: EdgeInsets.only(top: 5),
                        child: Row(children: [
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.grey,
                          ),
                          Container(
                            child: Text(
                              '4.5',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            margin: EdgeInsets.only(left: 10),
                          )
                        ]),
                      ),
                      // varian
                      Container(
                        child: Row(children: [
                          Text('Varian'),
                          SizedBox(
                            width: 100,
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 5),
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                color: Colors.amber, shape: BoxShape.circle),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 5),
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                color: Colors.cyan, shape: BoxShape.circle),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 5),
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                color: Colors.greenAccent,
                                shape: BoxShape.circle),
                          ),
                        ]),
                        margin: EdgeInsets.only(top: 5),
                      ),
                      //jumlah
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        child: Row(
                          children: [
                            Text('jumlah'),
                            SizedBox(
                              width: 100,
                            ),
                            Icon(Icons.remove_circle, color: Colors.amber),
                            Container(
                              child: Text(
                                '0',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              margin: EdgeInsets.only(left: 10, right: 10),
                            ),
                            Icon(
                              Icons.add_circle,
                              color: Colors.amber,
                            )
                          ],
                        ),
                      ),
                      //keranjang
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        child: Center(
                          child: Container(
                            alignment: Alignment.center,
                            width: 250,
                            height: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.amber),
                            child: Text(
                              'Tambahkan Ke Keranjang',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                      )
                    ]),
              ),
              //bagian 2
              Container(
                padding: EdgeInsets.only(top: 20, bottom: 20),
                width: double.infinity,
                height: 250,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey, spreadRadius: 1, blurRadius: 10)
                  ],
                  color: Colors.greenAccent,
                ),
                child: ListView.separated(
                  padding: EdgeInsets.all(10),
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return recentcard(index);
                        },
                        separatorBuilder: (context, index) {
                          return const SizedBox(
                            width: 12,
                          );
                        },
                        itemCount: 5,
                      )
              )
            ]),
          )),
    );
  }
}
