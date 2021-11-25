import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String input = "";
  List todo = List.empty(growable: true);
  @override
  void initState() {

    super.initState();
    todo.add('Item 1');
    todo.add('Item 2');
    todo.add('Item 3');
    todo.add('Item 4');
    todo.add('Item 5');
    todo.add('Item 6');
    todo.add('Item 7');
    todo.add('Item 8');
    todo.add('Item 9');
    todo.add('Item 10');
  }
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                  'lib/images/todo11.jpg'
              ),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(Colors.black12, BlendMode.darken),
            ),
          ),
        ),

        Scaffold(
          backgroundColor: Colors.white12,
          appBar: AppBar(
            toolbarHeight: 100,
            backgroundColor: Colors.black,
            title: Column(
              children: <Widget>[
                SizedBox(height:5,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[

                    CircleAvatar(
                      backgroundImage: AssetImage(
                          'lib/images/todo.jpg'
                      ),
                      radius: 25,
                    ),
                  ],

                ),
                SizedBox(height:10,),
                Text('MY TODO APPLICATION',
                  style: GoogleFonts.actor(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    letterSpacing: 1,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(5),
                bottomLeft: Radius.circular(5),
              ),
            ),
          ),
          body: ListView.builder(
            itemCount: todo.length,
            itemBuilder: (BuildContext context, int index){
              return Dismissible(
                key: Key(todo[index]),
                child: Card(
                  child: new InkWell(
                    onTap: (){},
                    child: ListTile(
                      title: Text(todo[index],

                        style: GoogleFonts.actor(
                          color: Colors.white,
                          fontSize: 14,
                        ),
                      ),
                      trailing: IconButton(
                        onPressed: (){
                          setState(() {
                            todo.removeAt(index);
                          });
                        },
                        icon: Icon(
                          Icons.delete,
                          size: 15,
                          color: Colors.white,
                        ),
                      ),

                    ),
                  ),
                  elevation: 0,
                  shadowColor: Colors.amber,
                  margin: EdgeInsets.all(0.3),
                  color: Colors.white12,
                ),
              );
            },
          ),
          bottomNavigationBar: BottomAppBar(
            shape: CircularNotchedRectangle(),
            notchMargin: 30,
            child: Container(
              height: 50,
              child: Row(
                children: <Widget>[
                  SizedBox(width:30,),
                  Icon(

                    Icons.ad_units,
                    color: Colors.white,
                    size: 25,
                  ),

                  SizedBox(width: 245),

                  SizedBox(width:0,),
                  Icon(
                    Icons.account_circle,
                    color: Colors.white,
                  ),

                ],
              ),

            ),
            color: Colors.black,
          ),

          floatingActionButton: FloatingActionButton(
            onPressed: (){

              showDialog(
                context: context,
                builder: (BuildContext context){
                  return AlertDialog(

                    title: Text('Add New Todos',
                      style: GoogleFonts.actor(
                        fontWeight: FontWeight.bold,
                        fontSize: 13,

                      ),

                    ),
                    content: TextField(
                      onChanged: (String value){input = value;},

                    ),

                    actions: <Widget>[
                      TextButton(
                        onPressed: (){

                          setState(() {
                            todo.add(input);
                          });
                          Navigator.of(context).pop();
                        },
                        child: Text('Add',
                          style: GoogleFonts.actor(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],

                  );
                },

              );
            },
            child: Icon(
              Icons.add,
              color: Colors.amber,
            ),
            backgroundColor: Colors.white,
            elevation: 0,
            foregroundColor: Colors.amber,
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,
        ),
      ],
    );
  }
}