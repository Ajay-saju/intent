import 'package:flutter/material.dart';

class ChatSearchBar extends SearchDelegate{
  @override
  List<Widget>? buildActions(BuildContext context) {

    return [
      IconButton(onPressed: (){}, icon:const Icon(Icons.clear))
    ];

    
  }

  @override
  Widget? buildLeading(BuildContext context) {
   return IconButton(onPressed: (){}, icon:const Icon(Icons.arrow_back_ios_new_rounded));
  }

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
    throw UnimplementedError();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // TODO: implement buildSuggestions
    throw UnimplementedError();
  }

}