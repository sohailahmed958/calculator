import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  List<String> list = [
    'This is Practice Data...1',
    'This is Practice Data...2',
    'This is Practice Data...3',
    'This is Practice Data...4',
    'This is Practice Data...5',
    'This is Practice Data...6',
    'This is Practice Data...7',
    'This is Practice Data...8',
    'This is Practice Data...9',
    'This is Practice Data...10',
    'This is Practice Data...11',
    'This is Practice Data...12',

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:ListView.separated(
        itemCount: list.length,
          itemBuilder: (context,index){
        return Text('${list[index]} $index');
      }, separatorBuilder: (BuildContext context, int index) {
          return Text('data');
        /*  if(index % 2 ==0){
            return Divider(thickness: 2,color: Colors.red,);
          }else{
            return Divider(thickness: 2,color: Colors.green,);
          }   */
      },) ,
    )  ;
  }
}



//                   List View
// Container(
// child: ListView(
// padding: EdgeInsets.all(20),
// shrinkWrap: true,
// reverse: false,
// itemExtent: 100,
// scrollDirection:Axis.vertical,
// children: const [
// Text('Data...1  '),
// Text('Data...2  '),
// Text('Data...3  '),
// Text('Data...4  '),
// Text('Data...5  '),
// Text('Data...6  '),
// Text('Data...7  '),
// Text('Data...8  '),
// /*    ListTile(title: Text('Data...1'),),
//           ListTile(title: Text('Data...2'),),
//           ListTile(title: Text('Data...3'),),
//           ListTile(title: Text('Data...4'),),
//           ListTile(title: Text('Data...5'),),
//           ListTile(title: Text('Data...6'),),
//           ListTile(title: Text('Data...7'),),
//           ListTile(title: Text('Data...8'),),
//           ListTile(title: Text('Data...9'),),
//           ListTile(title: Text('Data...10'),),
//           ListTile(title: Text('Data...11'),),
//           ListTile(title: Text('Data...12'),),
//           ListTile(title: Text('Data...13'),),
//           ListTile(title: Text('Data...14'),),
//           ListTile(title: Text('Data...15'),),
//           ListTile(title: Text('Data...16'),),
//           ListTile(title: Text('Data...17'),),
//           ListTile(title: Text('Data...18'),),  */
//
//
// ],),
// )

//                     Expanded Widget
// SafeArea(
// child: Scaffold(
// body: Column(children: [
// Row(
//
// children: [
// IconButton(onPressed: (){}, icon: Icon(Icons.menu)),
// const Expanded(child: Center(child: Text('Expended',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),))),
// IconButton(onPressed: (){}, icon: Icon(Icons.person)),
// ],),
// Container(
// height: 200,
// color: Colors.blue,
// ),
// Expanded(
// flex: 2,
// child: ListView.builder(
// itemCount: 20,
// itemBuilder: (context,index){
// return ListTile(
// title: Text('List Tile $index'),
// );
// }),
// ),
// Expanded(
// flex: 1,
// child: ListView.builder(
// itemCount: 20,
// itemBuilder: (context,index){
// return ListTile(
// tileColor: Colors.grey.withOpacity(0.5),
// title: Text('List Tile $index'),
//
// );
// }),
// )
// ],),
// ),
// )


//          Alignment With WithFactor Property
// SafeArea(
// child: Scaffold(
// body: Stack(
// children: [
// Container(
// color: Colors.blue,
// child: Align(
// widthFactor: 0.5,
// heightFactor: 0.5,
// alignment: Alignment.topRight,
// //  alignment: FractionalOffset(0.2,0.2),
// child: Container(
// height: 200,
// width: 200,
// decoration: const BoxDecoration(
// shape: BoxShape.circle,
// color: Colors.red
// ),
// ),
// ),
// )
// ],
// )),
// )

                 //       Alignment and Fractional offset alignment
// Center(
// child: Container(
// width: 350,
// height: 350,
// color: Colors.green,
// child: Align(
// alignment: FractionalOffset(0.5,0.5),
// child:  Text('Flutter',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)),
// ),
// )


// Rich Text Widget and Span text Widget
// Container(
// child: Center(
// child: RichText(
// text:  TextSpan(
// text: 'Share',
// style: TextStyle(color: Colors.black, fontSize: 40),
// children: [
// WidgetSpan(child: Icon(Icons.share),alignment: PlaceholderAlignment.middle)
// /*     TextSpan(
//                   text: 'Register',
//                   style:
//                       TextStyle(color: Colors.red, fontWeight: FontWeight.bold),recognizer: _gestureRecognizer)    */
// ])),
// ),
// )

// Styling Text
/*
Center(
child: Text('Hello WorldLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',style: TextStyle(
fontSize: 15,
fontFamily: "Raleway",
fontWeight: FontWeight.bold,

// foreground: Paint() ..color =Colors.red ..strokeWidth =2.0
//   ..style = PaintingStyle.stroke
),
textAlign: TextAlign.justify,
softWrap: false,
//maxLines: 2,
overflow: TextOverflow.ellipsis,
textScaleFactor: 2,
),

)
*/

/*      fontWeight: FontWeight.bold,
           decoration: TextDecoration.combine([
            TextDecoration.underline,
            TextDecoration.overline
          ]),
          decorationThickness: 3,
          decorationStyle: TextDecorationStyle.wavy,
          decorationColor: Colors.red,
          letterSpacing: 2,
          wordSpacing: 10,
          shadows: [
            Shadow(
              color: Colors.black,
             offset: Offset(2,-5)
            )
          ]    */

/*
        //     Write Above the retun SafeArea
   Size size = MediaQuery.of(context).size;
   Orientation orientation = MediaQuery.of(context).orientation;
   double boxSide = size.shortestSide - 50;

        // Declare inside the Scaffold Wiget
   Center(
   child: Builder(builder: (context){
   if(orientation.index == Orientation.landscape.index){
   return Row(mainAxisAlignment: MainAxisAlignment.center,
   children: layoutChildren(boxSide),);
   }else {
   return SingleChildScrollView(
   child: Column(mainAxisAlignment: MainAxisAlignment.center,
   children: layoutChildren(boxSide),),
   );
   }

   },),
   )

        //   Define Below the Class
   final ScrollController controller = ScrollController();
   List<Widget> layoutChildren(double boxSide) {

     return [Container(width: boxSide,
       height: boxSide,
       color: Colors.red,
       alignment: Alignment.center,
       child: Text('Text One',style: TextStyle(color: Colors.white,fontSize: 25),),),

       Container(width: boxSide,
         height: boxSide,
         color: Colors.green,
         alignment: Alignment.center,
         child: Text('Text One',style: TextStyle(color: Colors.white,fontSize: 25),),),];
   }
}

*/

//   Position Widget
// Center(
// child: Container(
// height: 500,
// width: 400,
// color: Colors.grey,
// child: Stack(
// alignment: Alignment.topRight,
//
// children: [
// Container(
// width: 200,
// height: 200,
// color: Colors.red,
// ),
// Positioned(
// bottom: -20,
// right: 0,
// child: Container(
// width: 100,
// height: 100,
// color: Colors.blue,
// ),
// ),
// ],
// ),
// ),
// )

//              Custom   Button Widget....
// Center(
// child: Container(
// width: 400,
// height: 200,
// color: Colors.red,
// child: Wrap(
// direction: Axis.horizontal,
// alignment: WrapAlignment.spaceAround,
// runAlignment: WrapAlignment.end,
// verticalDirection: VerticalDirection.up,
// spacing: 20,
// runSpacing: 20,
// textDirection: TextDirection.rtl,
// //  mainAxisSize: MainAxisSize.max,
// // mainAxisAlignment: MainAxisAlignment.spaceAround,
// //  crossAxisAlignment: CrossAxisAlignment.start,
// //  verticalDirection: VerticalDirection.down,
// //  textDirection: TextDirection.rtl,
//
// children: [
// myButton(text: 'Button 1'),
// myButton(text: 'Button 2'),
// myButton(text: 'Button 3'),
//
// ],
// ),
// ),
// ),

// myButton({required String text}){
//   return TextButton(onPressed: (){}, child: Text(text,   style: TextStyle(color: Colors.white, backgroundColor:Colors.blue ),),);
// }

// Container Widget
// Center(
// child: Container(
// padding: EdgeInsets.all(8),
// // constraints: BoxConstraints.expand(),
// alignment: Alignment.center,
// width: 200,
// height: 200,
// transform: Matrix4.rotationZ(.5),
// decoration: BoxDecoration(
//
// border: Border.all(color: Colors.red, width: 3,style: BorderStyle.solid),
// // borderRadius: BorderRadius.circular(20),
// boxShadow: const[
// BoxShadow(color: Colors.teal,blurRadius: 4.0,spreadRadius: 10.0)
// ],
// gradient: const LinearGradient(
// begin: Alignment.topCenter,
// end: Alignment.bottomCenter,
// colors:  [
// Colors.blue,
// Colors.white
// ]),
// shape: BoxShape.circle
// ),
// child: Text('Flutter Essentials'))),
