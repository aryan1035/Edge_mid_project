import 'package:flutter/material.dart';
import 'package:first_project/modules/Class3/ContainerGuide/container_guide_view.dart';
import 'package:first_project/modules/Class3/Row_view.dart/row_guide_view.dart';
import 'package:first_project/modules/Class3/ScaffoldGuide/Scaffold_guide_view.dart';
import 'package:first_project/modules/Class4/CardGuide/card_guide_view.dart';
import 'package:first_project/modules/Class4/CircleAvatarGuide/circle_avatar_guide.dart';
import 'package:first_project/modules/Class4/ContainerDetailsGuide/Container_details_guide_view.dart';
import 'package:first_project/modules/Class4/ImageGuide/image_guide_view.dart';
import 'package:first_project/modules/Class4/ListTitleGuide/list_title_guide.dart';
import 'package:first_project/modules/Class4/ListViewGuide/List_View_Guide.dart';
import 'package:first_project/modules/Class5/ButtonsGuide/buttons_guide_view.dart';
import 'package:first_project/modules/Class5/ExpandedGuide/expanded_guide_view.dart';
import 'package:first_project/modules/Class5/FittedBoxGuide/fittedbox_guide_view.dart';
import 'package:first_project/modules/Class5/GridViewCountGuide/gridview_count_guide_view.dart';
import 'package:first_project/modules/Class5/GridViewGuide/gridview_guide_view.dart';
import 'package:first_project/modules/Class5/ListViewBuilderGuide/listview_builder_guide_view.dart';

class HomeScreen extends StatelessWidget {
  // List of pages and their titles
  final List<Map<String, dynamic>> pages = [
    {'title': 'Scaffold Example', 'page': ScaffoldExample()},
    {'title': 'Container Example', 'page': ContainerExample()},
    {'title': 'Row Example', 'page': RowExample()},
    {'title': 'Container Details', 'page':  const ContainerDetailsGuide()},
    {'title': 'Card Guide', 'page':  const CardGuide()},
    {'title': 'ListView Guide', 'page':  const ListViewGuide()},
    {'title': 'ListTitle Guide', 'page':  const ListTileGuide()},
    {'title': 'Image Guide', 'page':  const ImageGuide()},
    {'title': 'Circle Avatar Guide', 'page':  const CircleAvatarGuide()},
    
    {'title': 'Buttons_Guide', 'page':  const ButtonsGuide()},
    {'title': 'Expanded_Guide', 'page':  const ExpandedGuide()},
    {'title': 'FittedBox_Guide', 'page':  const FittedBoxGuide()},
    {'title': 'GridView_CountGuide', 'page':  const GridViewCountGuide()},
    {'title': 'GridView_Guide', 'page':  const GridViewGuide()},
    {'title': 'ListView_BuilderGuide', 'page':  const ListViewBuilderGuide()},
    
    // {'title': 'Column Example', 'page': ColumnExample()},
    // {'title': 'Text Example', 'page': TextExample()},
    // {'title': 'SizedBox Example', 'page': SizedBoxExample()},
    // {'title': 'Center Example', 'page': CenterExample()},
  ];

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter Widgets List')),
      body: ListView.builder(
        itemCount: pages.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(pages[index]['title']),
            onTap: () {
              // Navigate to the selected page
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => pages[index]['page']),
              );
            },
          );
        },
      ),
    );
  }
}