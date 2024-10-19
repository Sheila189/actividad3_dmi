import 'package:flutter/material.dart';

class Verificacion extends StatefulWidget {
  const Verificacion({super.key});

  @override
  State<Verificacion> createState() => _VerificacionState();
}

class _VerificacionState extends State<Verificacion> {
  final TextEditingController _codigoController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String? validateCodigo(String? value) {
    // Asegúrate de definir aquí la longitud y el formato esperado para tu código de verificación
    if (value == null || value.isEmpty) {
      return 'Por favor, ingrese su código de verificación';
    } else if (value.length != 6) {
      // Ejemplo: código de 6 dígitos
      return 'El código debe tener 6 dígitos';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Verificacion del codigo"),
        centerTitle: true,
        backgroundColor: Colors.green[300],
        titleTextStyle: const TextStyle(fontSize: 20, color: Colors.white),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/logo.jpg",
                  width: 200,
                  height: 200,
                ),
                TextFormField(
                  validator:
                      validateCodigo, // Usa el nuevo validador para el código
                  controller: _codigoController,
                  decoration: const InputDecoration(
                    hintText: "Código de verificación",
                    label: Text('Código de verificación'),
                  ),
                  keyboardType: TextInputType
                      .number, // Cambiado a number para ingresar solo números
                ),
                const SizedBox(
                  height: 16,
                ),
                const SizedBox(
                  height: 48,
                ),
                SizedBox(
                  height: 48,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        Navigator.pushNamed(context, '/contra');
                      }
                    },
                    style: OutlinedButton.styleFrom(
                        backgroundColor: Colors.green[300],
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        )),
                    child: const Text("Validar código"),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
