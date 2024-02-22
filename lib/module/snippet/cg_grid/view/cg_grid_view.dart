import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:hyper_ui/core.dart';

class CgGridView extends StatefulWidget {
  CgGridView({Key? key}) : super(key: key);

  Widget build(context, CgGridController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: Text("CgGrid"),
        actions: [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(10.0),
          child: Column(
            children: [
              SnippetContainer("grid"),
              //#TEMPLATE grid
              GridView.builder(
                padding: EdgeInsets.zero,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 1.0,
                  crossAxisCount: 2,
                  mainAxisSpacing: 6,
                  crossAxisSpacing: 6,
                ),
                itemCount: 4,
                shrinkWrap: true,
                physics: ScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    color: Colors.red,
                    child: Column(
                      children: [],
                    ),
                  );
                },
              ),
              //#END
              SnippetContainer("grid2"),
              //#TEMPLATE grid2
              GridView.builder(
                padding: EdgeInsets.zero,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 1.0,
                  crossAxisCount: 2,
                  mainAxisSpacing: 6,
                  crossAxisSpacing: 6,
                ),
                itemCount: 4,
                shrinkWrap: true,
                physics: ScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    color: Colors.purple,
                    child: Column(
                      children: [],
                    ),
                  );
                },
              ),
              //#END
              SnippetContainer("grid3"),
              //#TEMPLATE grid3
              GridView.builder(
                padding: EdgeInsets.zero,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 1.0,
                  crossAxisCount: 3,
                  mainAxisSpacing: 6,
                  crossAxisSpacing: 6,
                ),
                itemCount: 6,
                shrinkWrap: true,
                physics: ScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    color: Colors.orange,
                    child: Column(
                      children: [],
                    ),
                  );
                },
              ),
              //#END
              SnippetContainer("grid4"),
              //#TEMPLATE grid4
              GridView.builder(
                padding: EdgeInsets.zero,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 1.0,
                  crossAxisCount: 4,
                  mainAxisSpacing: 6,
                  crossAxisSpacing: 6,
                ),
                itemCount: 8,
                shrinkWrap: true,
                physics: ScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    color: Colors.pink,
                    child: Column(
                      children: [],
                    ),
                  );
                },
              ),
              //#END
              SnippetContainer("grid5"),
              //#TEMPLATE grid5
              GridView.builder(
                padding: EdgeInsets.zero,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 1.0,
                  crossAxisCount: 5,
                  mainAxisSpacing: 6,
                  crossAxisSpacing: 6,
                ),
                itemCount: 10,
                shrinkWrap: true,
                physics: ScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    color: Colors.greenAccent,
                    child: Column(
                      children: [],
                    ),
                  );
                },
              ),
              //#END
              SnippetContainer("grid_count"),
              //#TEMPLATE grid_count
              GridView.count(
                padding: EdgeInsets.zero,
                childAspectRatio: 1.0,
                crossAxisCount: 3,
                crossAxisSpacing: 6,
                mainAxisSpacing: 6,
                shrinkWrap: true,
                children: <Widget>[
                  Container(
                    height: 100.0,
                    width: 100.0,
                    color: Colors.brown,
                    child: Center(
                      child: Text("1"),
                    ),
                  ),
                  Container(
                    height: 100.0,
                    width: 100.0,
                    color: Colors.brown,
                    child: Center(
                      child: Text("2"),
                    ),
                  ),
                  Container(
                    height: 100.0,
                    width: 100.0,
                    color: Colors.brown,
                    child: Center(
                      child: Text("3"),
                    ),
                  ),
                ],
              ),
              //#END
              SnippetContainer("grid_extent"),
              //#TEMPLATE grid_extent
              GridView.extent(
                padding: EdgeInsets.zero,
                childAspectRatio: 1.0,
                maxCrossAxisExtent: MediaQuery.of(context).size.width / 4,
                crossAxisSpacing: 6,
                mainAxisSpacing: 6,
                physics: ScrollPhysics(),
                shrinkWrap: true,
                children: <Widget>[
                  Container(
                    height: 100.0,
                    width: 100.0,
                    color: Colors.indigo[300],
                    child: Center(
                      child: Text("1"),
                    ),
                  ),
                  Container(
                    height: 100.0,
                    width: 100.0,
                    color: Colors.indigo[300],
                    child: Center(
                      child: Text("2"),
                    ),
                  ),
                  Container(
                    height: 100.0,
                    width: 100.0,
                    color: Colors.indigo[300],
                    child: Center(
                      child: Text("3"),
                    ),
                  ),
                  Container(
                    height: 100.0,
                    width: 100.0,
                    color: Colors.indigo[300],
                    child: Center(
                      child: Text("4"),
                    ),
                  ),
                ],
              ),
              //#END
              Divider(),
              SnippetContainer("sgrid2"),
              //#TEMPLATE sgrid2
              StaggeredGrid.count(
                crossAxisCount: 2,
                mainAxisSpacing: 4,
                crossAxisSpacing: 4,
                children: List.generate(
                  10,
                  (index) {
                    bool evenLine = index % 2 == 0;
                    return StaggeredGridTile.count(
                      crossAxisCellCount: 1,
                      mainAxisCellCount: evenLine ? 1 : 1.5,
                      child: Container(
                        color: Colors.red,
                        height: 100.0,
                      ),
                    );
                  },
                ),
              ),
              //#END
              SnippetContainer("sgrid3"),
              //#TEMPLATE sgrid3
              StaggeredGrid.count(
                crossAxisCount: 3,
                mainAxisSpacing: 4,
                crossAxisSpacing: 4,
                children: List.generate(
                  12,
                  (index) {
                    var cellCount = 1.0;
                    if (index % 2 == 0) cellCount = 1.4;
                    if (index % 3 == 0) cellCount = 1.6;
                    return StaggeredGridTile.count(
                      crossAxisCellCount: 1,
                      mainAxisCellCount: cellCount,
                      child: Container(
                        color: Colors.green,
                        height: 100.0,
                      ),
                    );
                  },
                ),
              ),
              //#END
              SnippetContainer("sgrid4"),
              //#TEMPLATE sgrid4
              StaggeredGrid.count(
                crossAxisCount: 4,
                mainAxisSpacing: 4,
                crossAxisSpacing: 4,
                children: List.generate(
                  16,
                  (index) {
                    var cellCount = 1.0;
                    if (index % 2 == 0) cellCount = 1.4;
                    if (index % 3 == 0) cellCount = 1.6;
                    if (index % 4 == 0) cellCount = 1.8;
                    return StaggeredGridTile.count(
                      crossAxisCellCount: 1,
                      mainAxisCellCount: cellCount,
                      child: Container(
                        color: Colors.orange,
                        height: 100.0,
                      ),
                    );
                  },
                ),
              ),
              //#END
              SnippetContainer("sgrid5"),
              //#TEMPLATE sgrid5
              StaggeredGrid.count(
                crossAxisCount: 5,
                mainAxisSpacing: 4,
                crossAxisSpacing: 4,
                children: List.generate(
                  16,
                  (index) {
                    var cellCount = 1.0;
                    if (index % 2 == 0) cellCount = 1.4;
                    if (index % 3 == 0) cellCount = 1.6;
                    if (index % 4 == 0) cellCount = 1.8;
                    if (index % 5 == 0) cellCount = 2.0;
                    return StaggeredGridTile.count(
                      crossAxisCellCount: 1,
                      mainAxisCellCount: cellCount,
                      child: Container(
                        color: Colors.blueGrey,
                        height: 100.0,
                      ),
                    );
                  },
                ),
              ),
              //#END
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<CgGridView> createState() => CgGridController();
}
