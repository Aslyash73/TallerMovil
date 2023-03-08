import 'package:flutter/material.dart';
import 'package:movilapp/widgets/inputs/CustomInputField.dart';

class ViewSecondScreen extends StatelessWidget {
  const ViewSecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'nombre': '',
      'horas': '',
      'valor': '',
    };

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text("APPSUELDO"),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              children: [
                _TitleCard(),
                _formImcapp(
                  formValues: formValues,
                  myFormKey: myFormKey,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _formImcapp extends StatelessWidget {
  const _formImcapp({
    super.key,
    required this.formValues,
    required this.myFormKey,
  });

  final GlobalKey<FormState> myFormKey;
  final Map<String, String> formValues;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: myFormKey,
      child: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          CustomInputField(
            textType: TextInputType.text,
            formProperty: "nombre",
            autofocus: true,
            formValues: formValues,
            labelText: "Nombre Empleado",
          ),
          const SizedBox(
            height: 30,
          ),
          CustomInputField(
            textType: TextInputType.number,
            formProperty: "horas",
            formValues: formValues,
            labelText: "Horas Trabajadas",
          ),
          const SizedBox(
            height: 30,
          ),
          CustomInputField(
            textType: TextInputType.number,
            formProperty: "horas",
            formValues: formValues,
            labelText: "Valor Hora",
          ),
          const SizedBox(
            height: 50,
          ),
          ElevatedButton(
              onPressed: () {
                print(formValues);
                if (!myFormKey.currentState!.validate()) {
                  return;
                }
              },
              style: ElevatedButton.styleFrom(
                  primary: Colors.indigo,
                  shape: const StadiumBorder(),
                  elevation: 0),
              child: const SizedBox(
                width: double.infinity,
                child: Center(
                  child: Text("Enviar"),
                ),
              ))
        ],
      ),
    );
  }
}

class _TitleCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: const [
          Text(
            "APPSUELDO",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          Text(
            "Calculo Sueldo !",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
