import 'package:flutter/material.dart';
import 'package:flutter_layout_grid/flutter_layout_grid.dart';

import './hoot_app_bar.dart';
import './cloud_background.dart';
import './Constants.dart' as Constants;
import './route_testing.dart';
import './Models/Book.dart';

class BookPage extends StatelessWidget {
  final Book sampleBook = Book(
    title: 'I Can Too: Dyslexic Heroes',
    author: 'James E Gentry',
    curator: 'Curator Dude',
    illustrator: 'Illustrator Dude',
    summary:
        'Book description paragraph: Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Porttitor massa id neque aliquam vestibulum morbi blandit cursus. Cras pulvinar mattis nunc sed blandit libero volutpat.',
    coverUrl:
        'https://firebasestorage.googleapis.com/v0/b/gentry-publishing-app.appspot.com/o/books%2FI%20Can%20Too%20-%20Dyslexic%20Heroes_1599163253736%2Fcover_image.png?alt=media&token=a00b80bf-e404-4c40-bd2a-600fbca81780',
  );
  //temp
  final String ipsum =
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Vel pretium lectus quam id leo in vitae turpis. Sollicitudin ac orci phasellus egestas tellus rutrum tellus pellentesque eu. Neque sodales ut etiam sit. Quam pellentesque nec nam aliquam. Vulputate sapien nec sagittis aliquam malesuada bibendum. Justo donec enim diam vulputate ut pharetra sit amet aliquam. Dictum fusce ut placerat orci nulla pellentesque. Porttitor rhoncus dolor purus non enim praesent elementum facilisis. Adipiscing at in tellus integer feugiat scelerisque varius. Consequat id porta nibh venenatis cras sed felis eget. Sed felis eget velit aliquet sagittis id consectetur purus ut.';
  final String image1 =
      'https://firebasestorage.googleapis.com/v0/b/gentry-publishing-app.appspot.com/o/books%2FI%20Can%20Too%20-%20Dyslexic%20Heroes_1599163253736%2FpageImages%2F2.png?alt=media&token=f551b7b7-d2e2-4be6-b813-c2b99b7fec30';
  @override
  Widget build(BuildContext context) {
    double screen_width = MediaQuery.of(context).size.width;
    double screen_height = MediaQuery.of(context).size.height;
    return MaterialApp(
      home: Scaffold(
          appBar: HootAppBar(),
          bottomNavigationBar: PageBar(),
          body: Container(
            child: LayoutGrid(
              areas: '''
        red blue
        ''',
              columnSizes: [
                (screen_width * .55).px,
                auto, //(screen_width *.45).px
              ],
              rowSizes: [auto],
              children: [
                Container(
                    color: Colors.white,
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text(ipsum,
                          textScaleFactor: 2,
                          style: TextStyle(fontFamily: 'learner')),
                    )).inGridArea('red'),
                //Container(color: Colors.blue)
                Container(color: Colors.white,
                  child: Center(
                    child: Container(
                      child: Image.network(image1)
                      .inGridArea('blue'),
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}

class PageBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screen_width = MediaQuery.of(context).size.width;
    double screen_height = MediaQuery.of(context).size.height;
    return BottomAppBar(
      color: Colors.blue.shade100,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: ElevatedButton(
              child: Container(
                child: Row(
                  children: [Icon(Icons.arrow_back), Text('Previous')],
                ),
              ),
              style: ElevatedButton.styleFrom(
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(30.0),
                ),
              ),
              onPressed: () {
                print('back page pressed');
              },
            ),
          ),
          Ink(
            //hmmm ink can't be inside a padding?
            decoration: ShapeDecoration(
              color: Colors.blue,
              shape: CircleBorder(),
            ),
            //padding: EdgeInsets.all(0),
            height: screen_height * .04,
            //child: Icon(Icons.home),
            child: IconButton(
                icon: Icon(Icons.home),
                splashRadius: 10,
                splashColor: Colors.green.shade50,
                color: Colors.white,
                onPressed: () {
                  //Navigator.pop(context);
                  print('home button pressed');
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => FirstScreen()));
                }),
          ),
          SizedBox(width: screen_width * .3),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: ElevatedButton(
              child: Container(
                child: Row(
                  children: [Icon(Icons.volume_up), Text('Read to me', 
                  style: TextStyle(fontFamily: 'learner'), 
                  textScaleFactor: 1.5)],
                ),
              ),
              style: ElevatedButton.styleFrom(
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(30.0),
                ),
              ),
              onPressed: () {
                print('read pressed');
              },
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: ElevatedButton(
              child: Container(
                child: Row(
                  children: [Icon(Icons.arrow_forward), Text('Next')],
                ),
              ),
              style: ElevatedButton.styleFrom(
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(30.0),
                ),
              ),
              onPressed: () {
                print('next page pressed');
              },
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size(double.infinity, kToolbarHeight);
}
