import 'package:api_md/pages/cep_fragment.dart';
import 'package:api_md/pages/cidade_fragment.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{

  @override
  State<StatefulWidget> createState() => _HomePageState();
}


class _HomePageState extends State<HomePage>{
  var _fragmentIndex = 0;

  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text(_fragmentIndex == 0 ? CepFragment.title : CidadeFragment.title),
      ) ,
      body: _buildBody(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _fragmentIndex,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.search),
          label: CepFragment.title,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: CidadeFragment.title,
          ),
        ],
        onTap: (int newIndex){
          if(newIndex != _fragmentIndex){
            setState(() {
              _fragmentIndex = newIndex;
            });
          }
        },
      ),
    );
  }

  Widget _buildBody() => _fragmentIndex == 0 ? CepFragment() : CidadeFragment();

}