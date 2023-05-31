import 'package:api_md/services/cep_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class CepFragment extends StatefulWidget{
  static const title = 'Consulta Cep';


  @override
  State<StatefulWidget> createState() => _CepFragmentState();
}

class _CepFragmentState extends State<CepFragment>{
  final _service = CepService();
  final _controler = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  final _cepFormater = MaskTextInputFormatter();

  Widget build(BuildContext context){
    return
  }
}