import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Vazifa2'),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.pink,
              Colors.red,
              Colors.blue,
              Colors.pink,
            ]
          )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(child: Text('word',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500 ),).tr()),
            )),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  const SizedBox(width: 10,),
                  Expanded(
                    child: ColoredBox(color: Colors.green, child: TextButton(
                      onPressed: (){
                        context.setLocale(Locale('en','US'));
                      },
                      child: const Text('English', style: TextStyle(color: Colors.white),),
                    ),),
                  ),
                  const SizedBox(width: 10,),
                  Expanded(
                    child: ColoredBox(color: Colors.red, child: TextButton(
                      onPressed: (){
                        context.setLocale(Locale('ko','KO'));
                      },
                      child: const Text('Korean', style: TextStyle(color: Colors.white),),
                    ),),
                  ),
                  const SizedBox(width: 10,),
                  Expanded(
                    child: ColoredBox(color: Colors.blue, child: TextButton(
                      onPressed: (){
                        context.setLocale(Locale('ja','JA'));
                      },
                      child: const Text('Japanese', style: TextStyle(color: Colors.white),),
                    ),),
                  ),
                  const SizedBox(width: 10,),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
