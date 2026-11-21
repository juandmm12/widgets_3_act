import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false, 
    home: PantallaUno(),
  ));
}

// ==========================================
// PANTALLA 1: TOOLTIP
// ==========================================
class PantallaUno extends StatelessWidget {
  const PantallaUno({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Widget 1: Tooltip'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Mantén presionado el ícono para ver el Tooltip:',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center, 
              ),
              const SizedBox(height: 20),
              const Tooltip(
                message: 'Guardar cambios en el servidor',
                verticalOffset: 30,
                waitDuration: Duration(seconds: 1),
                child: Icon(Icons.save, size: 60, color: Colors.blue),
              ),
              const SizedBox(height: 50),
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const PantallaDos()),
                  );
                },
                icon: const Icon(Icons.arrow_forward),
                label: const Text('Ir al Widget 2'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green, 
                  foregroundColor: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ==========================================
// PANTALLA 2: LINEARPROGRESSINDICATOR
// ==========================================
class PantallaDos extends StatelessWidget {
  const PantallaDos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Widget 2: LinearProgressIndicator'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Indicador de Progreso Lineal:',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              const LinearProgressIndicator(
                value: null, // Animación infinita
                backgroundColor: Colors.grey,
                color: Colors.green,
                minHeight: 8,
              ),
              const SizedBox(height: 50),
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const PantallaTres()),
                  );
                },
                icon: const Icon(Icons.arrow_forward),
                label: const Text('Ir al Widget 3'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green, 
                  foregroundColor: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ==========================================
// PANTALLA 3: BADGE (CON STATEFULWIDGET)
// ==========================================
class PantallaTres extends StatefulWidget {
  const PantallaTres({super.key});

  @override
  State<PantallaTres> createState() => _PantallaTresState();
}

class _PantallaTresState extends State<PantallaTres> {
  // Variable de estado para el contador de artículos
  int _contadorArticulos = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Widget 3: Badge'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Widget Carrito de Compras:',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 30),
              Badge(
                label: Text('$_contadorArticulos'), // Muestra la variable dinámica
                backgroundColor: Colors.red,
                textColor: Colors.white,
                largeSize: 22,
                child: const Icon(Icons.shopping_cart, size: 60),
              ),
              const SizedBox(height: 50),
              const Text(
                'Presiona el botón "+" abajo a la derecha para añadir artículos.',
                textAlign: TextAlign.center, 
                style: TextStyle(color: Colors.black54),
              ),
            ],
          ),
        ),
      ),
      
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _contadorArticulos++; 
          });
        },
        backgroundColor: Colors.green,
        child: const Icon(Icons.add, color: Colors.white),
      ),
    );
  }
}

