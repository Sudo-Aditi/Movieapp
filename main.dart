import 'dart:async';
import 'package:flutter/material.dart';
void main() {
  runApp(MyApp());
}
  
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
  
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),
          ()=>Navigator.pushReplacement(context,
                                        MaterialPageRoute(builder:
                                                          (context) => 
                                                          Movies()
                                                         )
                                       )
         );
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage('https://st3.depositphotos.com/4089777/13621/v/1600/depositphotos_136210396-stock-illustration-retro-film-movie-time-vector.jpg'),
           fit: BoxFit.fitHeight
    //  child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRkAxL3xlPsdHr8Yn1J0oY9TYulb4GU1Fbf4g&usqp=CAU'
      ), 
      ),
     ); //(size:MediaQuery.of(context).size.height)
  }
}
// class SecondScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title:Text("GeeksForGeeks")),
//       body: Center(
//         child:Text("Home page",textScaleFactor: 2,)
//       ),
//     );
//   }
// }
// class MynewApp extends StatelessWidget {
//   const MynewApp({Key? key}) : super(key: key);

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("MY First App"),
//           centerTitle: true,
//           backgroundColor: Colors.amber,
//             ),
//             backgroundColor: Colors.green,
//             body: Center(
//               child: Column ( 
//                 children: 
//                 [CircleAvatar(
//                   backgroundImage: AssetImage('assets/girl.jpeg'),
//                   radius: 100.0,
//                 ),
//                 Text(
//                   'Aditi Agarwal',
//                   style: TextStyle(
//                   fontSize:30.0,
//                   color: Colors.indigo,
//                   ),
//                 ),
//                 Text(
//                   'B.Tech Second Year',
//                   style: TextStyle(
//                     fontSize: 40.0,
//                     color:Colors.lightBlue
//                   ),

//                   ),
//                 Card(
//                   color:Colors.orangeAccent,
//                 child: ListTile (
//                     leading :Icon(
//                      Icons.phone,
//                     ),
//                     title: Text(
//                     '8840535310'
//                     ),
//                      //color:Colors.lime,
//                    ),
//                  ),
//                  Card(
//                    color:Colors.lightGreenAccent,
//                    child: ListTile(
//                      leading: Icon(
//                        Icons.mail,
//                      ),
//                      title: Text(
//                        'aditi.2024it1135@kiet.edu',
//                      ),
//                    ),
//                  ), 
//                 ],
//          // )
//               ),

// // This trailing comma makes auto-formatting nicer for build methods.
//     ),
//     ),
//     );
//   }
// }
class Movies extends StatelessWidget {
  const Movies({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar:AppBar(
            title: Text("moviE App"
            ),
            centerTitle: true,
            backgroundColor: Colors.blue,
          ),
          backgroundColor: Colors.white,
          body: MyGrid(
          ),
        ),
        
      );
  }
}
final urls = [
  'https://miro.medium.com/max/1280/0*FHnDt2e3IRpjJ5Wi',
  'https://images.bewakoof.com/utter/content/4805/content_Mission_Mangal__2019_-_Motivational_Bollywood_Movies_-_Bewakoof_Blog.jpg',
  'https://www.filmibeat.com/img/2014/11/14-1415961389-mary-kom.jpg',
  'https://filmfare.wwmindia.com/content/2018/feb/5ad4cab745700b7c39c149af_rw_1920_1519304817.jpg',
 // 'https://resize.indiatvnews.com/en/resize/newbucket/715_-/movie_review/nil-battey-sannata.jpg',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRfzca24WkyxZcdyQ7PsR6innoTHquDVaQvKw&usqp=CAU',
  
  'https://4.bp.blogspot.com/-3MATtyya2uY/Wf1hOLyo7rI/AAAAAAAADYc/aDjzsYWMr3w3dX3aBOnEzsq2WxoOJbyiACLcBGAs/s1600/images.jpeg',
  'https://miro.medium.com/max/1280/0*Xiw9H4A7iucvnoOD',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSCuOwpg_js6vt-yKzBtvZo-KaZrDhnY22zJA&usqp=CAU',
  'https://miro.medium.com/max/1280/0*qq9g6_BTktL6d6cz',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRr9OHhZdMu1OuL5771kBKggHJ0D5SnLy7exA&usqp=CAU',
  'https://i0.wp.com/boxofficeworldwide.com/wp-content/uploads/2021/08/bell-bottom-et00117102-14-08-2021-04-33-35.jpg?fit=1280%2C640&ssl=1',
  'https://s3images.zee5.com/wp-content/uploads/sites/7/2020/08/Digital-premiere-poster-of-Uri-The-Surgical-Strike.jpg',
  'https://m.media-amazon.com/images/I/71XWCnugngL._SX355_.jpg',
  'https://img.theweek.in/content/dam/week/news/entertainment/images/2019/1/9/Uri.jpg',
  
];
final names = [
  'Name of The Movie : Chack De India',
  'Name of The Movie : Mission Mangal',
  'Name of The Movie : MaryKom',
  'Name of The Movie : Bhag Milkha Bhag',
  'Name of The Movie : Nil Battey Sannata',
  'Name of The Movie : Goal',
  'Name of The Movie : Baghban',
  'Name of The Movie : English Vinglish',
  'Name of The Movie : Border',
  'Name of The Movie : Secret Superstar',
  'Name of The Movie : Bell Bottom',
  'Name of The Movie : Uri The Surgical Strike',
  ];
  final actors = [
    'Starring : Shahrukh Khan,Chitrashi Rawat,Sagarika Ghatge',
    'Starring : Akshay Kumar,Sonakshi Sinha,Vidya Balan,Nithya Menen,Tapsi Pannu',
    'Starring : Priyanka Chopra,Darshan Kumar,Sunil Thapa',
    'Starring : Farhan Akthar,Sonam Kapoor,Rakesh OmPrakash',
    'Starring : Swara Bhaskar,Ratna Pathak Shah,Pankag Tripathi',
    'Starring : Kuno Beckar,Stephen Dillane,Allesandro Nivola,Sean Petwee,Tony Plana...',
    'Starring : Amitabh Bachchan,Hema Malini,Salman Khan,Mahima Chaudhry',
    'Starring : Sridevi,Adil Hussain,Mehdi Nebbou,Priya Anand',
    'Starring : Sunny Deol,Sunil Shetty,Jackie Shroff',
    'Starring : Zaira Wasim,Aamir Khan,Meher Vij',
    'Starring : Akshay Kumar,Lara Dutta,Vaani Kapoor,Huma Qureshi',
    'Starring : Vicky Kaushal,Yami Gautam,Mohit Raina,Kriti Kulhari,Paresh Rawal', 
  ];
  final directors =[
    'Directed by:Shimit Amin',
    'Directed by:Jagan Shakti',
    'Directed by:Omung Kumar',
    'Directed by:Rakeysh Omprakash Mehra',
    'Directed by:Ashwiny Iyer Tiwari',
    'Directed by:Andy Morahan,Jaume Collet-Serra',
    'Directed by:Ravi Chopra',
    'Directed by:Gauri Shinde',
    'Directed by:J.P. Dutta',
    'Directed by:Advait Chandan',
    'Directed by:Ranjit Tiwari',
    'Directed by:Aditya Dhar',
  ];
class MyGrid extends StatelessWidget {
  const MyGrid({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount:3,
        mainAxisSpacing: 10,
        crossAxisSpacing: 5,
        childAspectRatio: 5/6,
         ),
         itemCount: 12,
         itemBuilder: (context,index){
           return GestureDetector(
             onTap: (){
               Navigator.push(
                 context,
                 MaterialPageRoute(
                   builder: (context) => ImageScreen(
                     url:urls[index],
                     name:names[index],
                     actor:actors[index],
                     director:directors[index],
                    // image:images[index],
                   ),
                   ),
               );
         },
         child: Card(
           elevation: 8,
           color: Colors.white,
           child:Padding(
             padding:EdgeInsets.all(5.0),
             child: Container(
               //child:Text('')
               color: Colors.amber,
               height:double.infinity,
               width:double.infinity,
              // child:Text('names.network'),
               child: Image.network(
                 urls[index],
                 fit: BoxFit.fill,
                 
               //  names[index],
                 )  
              //   names[index],            
               ),
             ),
           ),
        );

      },
    ),  
   );
  }
}
class ImageScreen extends StatefulWidget {
   ImageScreen({ Key? key ,this.url,this.name,this.actor,this.director}) : super(key: key);

  final String? url;
  final String? name;
  final String? actor;
  final String? director;

  @override
  _ImageScreenState createState() => _ImageScreenState();
}

class _ImageScreenState extends State<ImageScreen> {
  bool isDownloading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(" Movie Details"
        ),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      backgroundColor: Colors.black,
      body: Column(
        children: [  
          Container(
            height:300,
            width: 300,
            child: Image.network(
              widget.url!,
              fit: BoxFit.fill,
            ), 
          ),
         


          // Card(
          //  color:Colors.white,
          //   child: ListTile(
          //     leading :Icon(
          //       Icons.library_music,
          //       color: Colors.red,
          //     ),
          //     title:Text(
          //     widget.actor!,
          //     style: TextStyle(
          //       fontSize: 20.0,
          //       color: Colors.black,
          //     ),
          //   ),
          //  // color: Colors.purple,
          // ),
          //   // margin: 
          // ),
          Card(
            color:Colors.amberAccent,
            child: ListTile(
              leading :Icon(
                Icons.add_comment,
                color: Colors.red,
              ),
              title:Text(
              widget.name!,
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.black,
              ),
            ),
           // color: Colors.purple,
          ),
          ),
           Card(
            color:Colors.amberAccent,
            child: ListTile(
              leading :Icon(
                Icons.add_comment,
                color: Colors.red,
              ),
              title:Text(
              widget.actor!,
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.black,
              ),
            ),
           // color: Colors.purple,
          ),
          ),

          Card(
           color:Colors.amberAccent,
            child: ListTile(
              leading :Icon(
                Icons.link,
                color: Colors.red,
              ),

              title:Text(
              widget.director!,
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.black,
                
              ),
            ),
           // color: Colors.purple,
          ),
            // margin: 
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              // Card(
              //   elevation: 7,
              //   child:Padding(
              //     padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
              //   child: Column(
              //     children: <Widget>[
              //       Icon(
              //         Icons.timer,
              //         size: 15,
              //         color: Theme.of(context).primaryColor ,
              //       ),
              //       SizedBox(height: 10,),
              //       Text(
              //         '200 min',
              //         style: TextStyle(
              //           fontSize: 14,
              //           fontWeight: FontWeight.bold,
              //         ),
              //       )
              //     ],
              //   ),
              // )
              // ),
              Card(
                elevation: 7,
                child:Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                child: Column(
                  children: <Widget>[
                    Icon(
                      Icons.camera,
                      size: 15,
                      color: Colors.lightBlueAccent ,
                    ),
                    SizedBox(height: 15,
                    ),
                    Text(
                      'Watch Full Movie',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              )
              ),
              Card(
                elevation: 7,
                child:Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                child: Column(
                  children: <Widget>[
                    Icon(
                      Icons.linked_camera,
                      size: 15,
                      color: Colors.red ,
                    ),
                    SizedBox(
                      height: 15,
                      ),
                    Text(
                      'Watch Trailer',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              )
             // color: Colors.red,
              )
            ],
          )
      
        ],
      ),
      
    );
  }
}