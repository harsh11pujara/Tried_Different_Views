import 'package:flutter/material.dart';


class CustomScrollbar extends StatefulWidget {
  const CustomScrollbar({Key? key}) : super(key: key);

  @override
  State<CustomScrollbar> createState() => _CustomScrollbarState();
}

class _CustomScrollbarState extends State<CustomScrollbar> {
  ScrollController scrollController = ScrollController(
    initialScrollOffset: 0,
  );

  @override
  void initState() {
    scrollController.positions.length;
    scrollController;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          Container(
            color: Colors.white,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: RawScrollbar(
              // isAlwaysShown: true,

              scrollbarOrientation: ScrollbarOrientation.right,
              controller: scrollController,
              interactive: true,
              mainAxisMargin: 35,
              thickness: 15,
              padding: const EdgeInsets.only(right: 10),
              thumbColor: Colors.blue[500],
              thumbVisibility: true,
              shape: BeveledRectangleBorder(side: BorderSide(color: Colors.blue[900]!, width: 1.5)),
              child: SingleChildScrollView(
                controller: scrollController,
                child: Container(
                  padding: const EdgeInsets.only(right: 35),
                  child: Column(
                    children: [
                      Container(
                        height: 100,
                        width: MediaQuery.of(context).size.width,
                        color: Colors.red,
                      ),
                      Container(
                        height: 100,
                        width: MediaQuery.of(context).size.width,
                        color: Colors.greenAccent,
                      ),
                      Container(
                        height: 100,
                        width: MediaQuery.of(context).size.width,
                        color: Colors.black12,
                      ),
                      Container(
                        height: 100,
                        width: MediaQuery.of(context).size.width,
                        color: Colors.brown,
                      ),
                      Container(
                        height: 100,
                        width: MediaQuery.of(context).size.width,
                        color: Colors.redAccent,
                      ),
                      Container(
                        height: 100,
                        width: MediaQuery.of(context).size.width,
                        color: Colors.blueAccent,
                      ),
                      Container(
                        height: 100,
                        width: MediaQuery.of(context).size.width,
                        color: Colors.yellowAccent,
                      ),
                      Container(
                        height: 100,
                        width: MediaQuery.of(context).size.width,
                        color: Colors.white24,
                      ),
                      Container(
                        height: 100,
                        width: MediaQuery.of(context).size.width,
                        color: Colors.blueGrey,
                      ),
                      Container(
                        height: 100,
                        width: MediaQuery.of(context).size.width,
                        color: Colors.pink,
                      ),
                      Container(
                        height: 100,
                        width: MediaQuery.of(context).size.width,
                        color: Colors.orangeAccent,
                      ),
                      Container(
                        height: 100,
                        width: MediaQuery.of(context).size.width,
                        color: Colors.black87,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          const Positioned(
              top: 2,
              right: 0,
              child: Icon(
                Icons.arrow_drop_up_sharp,
                color: Colors.blueAccent,
                size: 35,
              )),
          const Positioned(
              bottom: 2,
              right: 0,
              child: Icon(
                Icons.arrow_drop_down_sharp,
                color: Colors.blueAccent,
                size: 35,
              )),
        ],
      ),
    );
  }
}
