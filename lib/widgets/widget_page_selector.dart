

import 'package:flutter/material.dart';

class CustomPageSelectorExample extends StatelessWidget{
  final List<Widget> childWidgets;
  const CustomPageSelectorExample({
    Key key,
     this.childWidgets
    }):super(key: key);

 


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: childWidgets.length,
      child: Builder(
        builder: (BuildContext context)=>Padding(
          padding: const EdgeInsets.all(0.0),
          child: Column(
            children: <Widget>[
              TabPageSelector(),
              Expanded(
                child: IconTheme(
                    data: IconThemeData(
                      size: 128.0,
                      color: Theme.of(context).accentColor                  
                        ),
                  
                  child: TabBarView(children: childWidgets,),
                ),
              ),
              /*RaisedButton(
                child: Text("SKIP"),
                onPressed: (){
                  final TabController controller = DefaultTabController.of(context);
                  if(!controller.indexIsChanging){
                    controller.animateTo(childWidgets.length -1 );
                  }
                },
              )*/
            ],
          ),
        ),
      ),
    );
  }
  
}