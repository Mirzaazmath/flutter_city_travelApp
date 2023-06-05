import 'package:cities_app/screens/parallaxwidget.dart';
import 'package:flutter/material.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String>categories=["Popular","Following","New","Beach","Hiking","Lake"];
    return Scaffold(
        extendBody: true,
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: const Padding(
          padding:  EdgeInsets.all(5.0),
          child: CircleAvatar(
            backgroundImage: AssetImage("assets/profile.png"),
          ),
        ),
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Good Morning",style: TextStyle(color: Colors.grey,fontSize: 13),),
            Text("dev_73arner",style: TextStyle(color: Colors.black,),)],
        ),
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.notifications_outlined,color: Colors.black,))
        ],
      ),

        bottomNavigationBar:BottomAppBar(

          notchMargin: 6,
          shape:const CircularNotchedRectangle(),

          child:  Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,

            children: [
              Padding(
                padding: const EdgeInsets.all(5),
                child: buildicon(0,const Icon(Icons.home)),
              ),
              Padding(
                padding: const EdgeInsets.all(5),
                child: buildicon(1,const Icon(Icons.search_rounded)),
              ),
              const  Opacity(opacity: 0,child: Icon(Icons.no_cell),),
              Padding(
                padding: const EdgeInsets.all(5),
                child: buildicon(2,const Icon(Icons.person_outline)),
              ),
              Padding(
                padding: const EdgeInsets.all(5),
                child: buildicon(3,const Icon(Icons.settings_outlined)),
              ),

            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>HomeScreen()));
          },
          child: Container(
            height: 60,
            width: 60,
            decoration:const  BoxDecoration(
              boxShadow: [
                BoxShadow(
                    color:  Color(0xff2998f4),
                    offset: Offset(5,5),
                    blurRadius: 20


                )
              ],
              shape: BoxShape.circle, // circular shape
              gradient: LinearGradient(
                colors: [
                  Color(0xff2998f4),
                  Color(0xff317fdc)
                ],
              ),
            ),
            child: const Icon(
              Icons.add,
              color: Colors.white,
            ),
          ),
        ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,




        body:  SingleChildScrollView(
          child: Column(
            children: [
           const    SizedBox(height: 10,),
              SizedBox(
                height: 120,
                child: ListView.builder(
                  reverse: true,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount:locations.length,
                    itemBuilder: (context,index){
                    return Container(height: 120,
                    width: 90,
                    margin: const EdgeInsets.only(left: 5),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: NetworkImage(locations[index].imageUrl),fit: BoxFit.fill
                      )),
                      child:const  Center(
                        child: CircleAvatar(
                          radius: 20,
                          backgroundImage: AssetImage("assets/profile.png"),
                        ),
                      ),

                    );

                }),
              ),
              const    SizedBox(height: 25,),
            Padding(padding:const  EdgeInsets.only(left: 20),
                child:   SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                  for(int i=0;i<categories.length;i++)...[Padding(
                    padding:  EdgeInsets.only(left: i==0?0:20),
                    child: Text(categories[i],style: TextStyle(fontSize: i==0?30:15,fontWeight: FontWeight.bold),),
                  )]

              ],
            ),
                ),),
              const    SizedBox(height: 10,),
              for (final location in locations)
                LocationListItem(
                  imageUrl: location.imageUrl,
                  name: location.name,
                  country: location.place,
                ),
            ],
          ),
        ));
  }
  Widget buildicon(var index,icon) {
    return IconButton(onPressed: () {

    }, icon: icon,color: index==0?Colors.blue:Colors.grey,);
 }
  }
