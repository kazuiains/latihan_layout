import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ViewProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget headProfile = new Stack(
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topRight: const Radius.circular(24),
                  topLeft: const Radius.circular(24),
                ),
                child: Image(
                  image: NetworkImage(
                    'https://www.gamenguides.com/wp-content/uploads/2020/01/solo-leveling-manga-0110-1021x580.jpg',
                  ),
                  height: 200.0,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              height: 140,
            )
          ],
        ),
        Positioned.fill(
          top: 140,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
            child: Column(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(
                      color: Colors.blueGrey[900],
                      width: 4,
                    ),
                    color: Colors.blueGrey[900],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image(
                      image: NetworkImage(
                          'https://scontent-cgk1-1.xx.fbcdn.net/v/t1.0-9/65297764_2286735178085094_6580231914307715072_n.jpg?_nc_cat=100&_nc_ohc=gSR_dcvoTjwAX_CKDFy&_nc_ht=scontent-cgk1-1.xx&oh=50f100415127242935143817a4f951f5&oe=5E9B893A'),
                      width: 120,
                      height: 120,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                  child: Text(
                    "Muhammad Adi Yusuf",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  "Jakarta, 4 Agustus 1999",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );

    Widget bodyProfile = new Container(
      margin: EdgeInsets.fromLTRB(16, 10, 16, 10),
      padding: EdgeInsets.all(24),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.blueGrey[800],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image(
                    image: NetworkImage(
                        'https://scontent-cgk1-1.xx.fbcdn.net/v/t1.0-9/65297764_2286735178085094_6580231914307715072_n.jpg?_nc_cat=100&_nc_ohc=gSR_dcvoTjwAX_CKDFy&_nc_ht=scontent-cgk1-1.xx&oh=50f100415127242935143817a4f951f5&oe=5E9B893A'),
                    width: 35,
                    height: 35,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Muhammad Adi Yusuf",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "28 Januari 2020",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
            child: Container(
              child: Text(
                "Wowo shk hsaj hsjah sjdh aksjhdkajhsdkjhak djkshaj dhsdjhasjdh ajwhdjhsjdhawjdh sjhawjhd jshd ajhw jjhsjdhajkshd ahsd jahsdjkahsdj",
                style: TextStyle(color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text(
              "Latihan Layoouting",
            ),
            backgroundColor: Colors.blueGrey[800],
          ),
          backgroundColor: Colors.blueGrey[900],
          body: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  headProfile,
                  bodyProfile,
                  bodyProfile,
                  bodyProfile,
                  bodyProfile,
                ],
              ),
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: null,
            child: Icon(Icons.add),
          )),
    );
  }
}
