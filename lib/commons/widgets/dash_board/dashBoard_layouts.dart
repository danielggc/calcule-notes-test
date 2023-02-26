
import 'package:calculate_note/commons/provider/side_menu_provider.dart';
import 'package:calculate_note/commons/widgets/molecules/up_menu.dart';

import 'package:calculate_note/commons/widgets/views/sidebar.dart';

import 'package:flutter/material.dart';

class DashBoardLayouts extends StatefulWidget{
    final Widget child;
  DashBoardLayouts({required this.child });
  _DashBoardLayouts createState() => _DashBoardLayouts();
}

class _DashBoardLayouts extends State<DashBoardLayouts> with SingleTickerProviderStateMixin {
  void initState(){
    SideMenuProvider.menuController = new AnimationController(
      vsync: this ,
      duration: Duration(microseconds: 500)
    );
  }

  @override
  Widget build(BuildContext context) { 
    // TODO: implement build
    final wize = MediaQuery.of(context).size;
    return Stack( 
      children:[
       Row(
        children: [
          if(  wize.width >=700 )
            Sidebar(),
          Expanded(
            child: Column(
              children: [
              Material(child: UpMenu()),
                Expanded( child: this.widget.child ),
              ]
            )
          )
        ],
      ),
      if( wize.width < 700 )
        AnimatedBuilder(
          animation: SideMenuProvider.menuController,
          builder: ( context, _ )  => Stack(
            children: [
              if( SideMenuProvider.isOpen )
                Opacity(
                  opacity: SideMenuProvider.opacity.value,
                  child: GestureDetector(
                    onTap: () => SideMenuProvider.closeMenu() ,
                    child: Container(
                      width: wize.width,
                      height: wize.height,
                      color: Colors.black26,
                    ),
                   ),
                ),
              Transform.translate(
                offset: Offset( SideMenuProvider.movement.value , 0),
                child: Sidebar(),
              )
            ],
          )
        )      
    ]
  );

  }


}