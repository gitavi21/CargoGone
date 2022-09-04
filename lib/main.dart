import 'package:flutter/material.dart';

import 'details.dart';

void main() => runApp(MyApp());

/// This Widget is the main application widget.
class MyApp extends StatelessWidget {
  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: MyStatelessWidget(),
    );
  }
}

final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
final SnackBar snackBar = const SnackBar(content: Text('Showing Snackbar'));

void openPage(BuildContext context) {
  Navigator.push(context, MaterialPageRoute(
    builder: (BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Next page'),
        ),
        body: const Center(
          child: Text(
            'This is the next page',
            style: TextStyle(fontSize: 24),
          ),
        ),
      );
    },
  ));
}

/// This is the stateless widget that the main application instantiates.
class MyStatelessWidget extends StatelessWidget {
  MyStatelessWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: const Text('AppBar Demo'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.add_alert),
            tooltip: 'Show Snackbar',
            onPressed: () {
              scaffoldKey.currentState.showSnackBar(snackBar);
            },
          ),
          IconButton(
            icon: const Icon(Icons.navigate_next),
            tooltip: 'Next page',
            onPressed: () {
              openPage(context);
            },
          ),
        ],
      ),
      body: const Center(
        child: Text(
          'This is the home page',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}



// void main() {
//   runApp(MyApp());
// }
// class DyWidget extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return FloatingActionButton(child: Icon(Icons.delete),onPressed: (){},);
//   }
// }
//
// class MyApp extends StatefulWidget {
//   @override
//   _MyAppState createState() => _MyAppState();
// }
//
// class _MyAppState extends State<MyApp> {
//   List <DyWidget> listdy = [];
//
//   addDy() {
//     listdy.add(DyWidget());
//     setState(() {
//
//     });
//   }
//
//   deldy() {
//     listdy.removeLast();
//   }
//
//   bool isChecked = false;
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         floatingActionButton: FloatingActionButton(onPressed: addDy,
//           child: Icon(Icons.add),),
//         body: Column(
//           crossAxisAlignment: CrossAxisAlignment.end,
//           children: [
//             Container(
//               child:
//                     Flexible(child: ListView.builder(itemCount: listdy.length,
//                         itemBuilder: (_, index) => listdy[index])),
//             ),
//             Checkbox(value: isChecked, onChanged: (newValue) {
//               setState(() {
//                 isChecked = newValue;
//               });
//               if (isChecked) {
//                 print("clicked");
//                 addDy();
//               }
//               else {
//                 print("un");
//                 deldy();
//               }
//             }),
//
//       ]),
//       // _buildListView(context),
//     )
//     );
//   }
// }
//
//
//
// // ListView _buildListView(BuildContext context) {
// //     return ListView.builder(itemCount: 5, itemBuilder: (context, index) {
// //       return ListTile(
// //         title: Text("$index"),
// //         onTap: () {
// //           Navigator.push(context,
// //               MaterialPageRoute(builder: (context) => Deta(index,)));
// //         },
// //       );
// //     }
// //     );
// //   }
// //
// // }
//
//
