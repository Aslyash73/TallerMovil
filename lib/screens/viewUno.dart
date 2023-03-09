import 'package:flutter/material.dart';
import 'package:movilapp/widgets/inputs/CustomInput.dart';

class ViewOneScreen extends StatelessWidget {
  const ViewOneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'Peso': '',
      'Altura': '',
    };

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text("IMCAP❤️"),
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
            textType: TextInputType.number,
            formProperty: "peso",
            autofocus: true,
            formValues: formValues,
            labelText: "Peso (KG)",
          ),
          const SizedBox(
            height: 50,
          ),
          CustomInputField(
            textType: TextInputType.number,
            formProperty: "altura",
            formValues: formValues,
            labelText: "Altura (mts)",
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
                  primary: Colors.red,
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
            "IMCAPP",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          Text(
            "Vida Saludabe",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
