# widgets_3_act

# Investigación de widgets de Flutter

**Nombre del estudiante:** Juan David Martínez Mena
**Grupo:** [602]
**Fecha:** 17 de octubre de 2026
**Mis widgets:** `Tooltip`, `LinearProgressIndicator`, `Badge`

---

## 1. `Tooltip`

### Qué es y para qué sirve
`Tooltip` despliega una etiqueta flotante de texto cuando el usuario mantiene presionado prolongadamente un widget o pasa el cursor del mouse sobre él. Sirve para solventar las restricciones de espacio físico en pantallas móviles, dando descripciones textuales inmediatas a íconos que carecen de texto aclaratorio.

### Cuándo usarlo y cuándo no
* **Cuándo usarlo:** En botones gráficos abstractos o de barras de menús rápidos para clarificar la funcionalidad de la acción antes de ejecutarla.
* **Cuándo no usarlo:** Para contener información estructural o de lectura obligatoria, dado que la etiqueta desaparece de forma automática tras unos segundos.

### Ejemplo mínimo
```dart
Tooltip(
  message: 'Guardar',
  child: Icon(Icons.save),
)
```

### Explicación del ejemplo
Al mantener el dedo sobre el ícono de guardado (`Icons.save`), el motor de Flutter despliega automáticamente un pequeño recuadro descriptivo flotante con la palabra literal "Guardar".

### Propiedades importantes

| Propiedad | Qué hace | Ejemplo |
|---|---|---|
| `message` | Cadena de texto que se renderiza dentro del globo descriptivo. | `message: 'Guardar'` |
| `verticalOffset` | Distancia en pixeles que separa el globo flotante del widget base. | `verticalOffset: 30` |
| `waitDuration` | Retraso temporal asíncrono requerido antes de activar la animación. | `waitDuration: Duration(seconds: 1)` |
| `child` | Componente gráfico secundario sobre el cual se mapea el gesto. | `child: Icon(Icons.save)` |

### Ejemplo personalizado
```dart
const Tooltip(
  message: 'Guardar cambios en el servidor',
  verticalOffset: 30,
  waitDuration: Duration(seconds: 1),
  child: Icon(Icons.save, size: 60, color: Colors.blue),
)
```

### Dónde lo usaría en Mercado Campesino
En la barra de navegación superior o panel lateral de la aplicación, específicamente sobre íconos complejos (como el ícono de una balanza que signifique "Calcular pesos por bulto") para guiar al productor agrícola sin ocupar espacio de pantalla.

### Fuentes y ayudas usadas
* Documentación oficial de Flutter: https://flutter.dev

---

## 2. `LinearProgressIndicator`

### Qué es y para qué sirve
`LinearProgressIndicator` consiste en una barra de progreso horizontal continua. Permite indicarle visualmente al usuario que la aplicación se encuentra procesando datos asíncronos en segundo plano (peticiones a servidores, cálculos locales o descargas), aplacando la incertidumbre de la interfaz.

### Cuándo usarlo y cuándo no
* **Cuándo usarlo:** En la cima de vistas dinámicas mientras se completa el parseo de datos estructurados provenientes de un servicio en red.
* **Cuándo no usarlo:** En espacios confinados compactos como el interior de botones pequeños. En ese caso es óptimo delegar la tarea a un `CircularProgressIndicator`.

### Ejemplo mínimo
```dart
LinearProgressIndicator()
```

### Explicación del ejemplo
Al ser invocado sin propiedades explícitas, asume un comportamiento indefinido, renderizando una barra animada sin fin que corre cíclicamente de izquierda a derecha.

### Propiedades importantes

| Propiedad | Qué hace | Ejemplo |
|---|---|---|
| `value` | Control numérico (0.0 a 1.0) del progreso real. En `null` es infinito. | `value: null` |
| `backgroundColor` | Tono de color base asignado al riel de soporte de la carga. | `backgroundColor: Colors.grey` |
| `color` | Tono cromático activo asignado a la línea animada de progreso. | `color: Colors.green` |
| `minHeight` | Espesor físico medido en pixeles verticales de la barra indicadora. | `minHeight: 8` |

### Ejemplo personalizado
```dart
const LinearProgressIndicator(
  value: null,
  backgroundColor: Colors.grey,
  color: Colors.green,
  minHeight: 8,
)
```

### Dónde lo usaría en Mercado Campesino
En la vista inicial del catálogo de productos agrícolas. Mientras el framework de Flutter espera la respuesta del API que trae los productos de las veredas, la barra informará al usuario que la app sigue activa cargando existencias.

### Fuentes y ayudas usadas
* Documentación oficial de Flutter: https://flutter.dev

---

## 3. `Badge`

### Qué es y para qué sirve
`Badge` provee una pequeña insignia, punto de alerta o contador numérico superpuesto en la esquina superior derecha de un widget primario. Resuelve de forma inmediata la necesidad de notificar alertas puntuales, números de mensajería o artículos seleccionados en tiempo real.

### Cuándo usarlo y cuándo no
* **Cuándo usarlo:** Adosado a íconos interactivos de carritos de compras o bandejas de mensajes entrantes para reflejar contadores dinámicos.
* **Cuándo no usarlo:** Para renderizar textos descriptivos de más de 3 caracteres, ya que distorsiona la geometría compacta de la insignia circular.

### Ejemplo mínimo
```dart
Badge(
  child: Icon(Icons.shopping_cart),
)
```

### Explicación del ejemplo
Ubica un círculo indicador rojo compacto por defecto sobre la sección superior del ícono del carrito, actuando como un disparador visual de atención.

### Propiedades importantes

| Propiedad | Qué hace | Ejemplo |
|---|---|---|
| `label` | Widget secundario (usualmente un `Text`) incrustado dentro del círculo. | `label: Text('5')` |
| `backgroundColor` | El color de fondo sólido del círculo de la insignia. | `backgroundColor: Colors.red` |
| `textColor` | Ajuste de matiz exclusivo para la tipografía del label interno. | `textColor: Colors.white` |
| `largeSize` | Dimensión física de escala vertical de la insignia si acarrea texto. | `largeSize: 22` |

### Ejemplo personalizado
```dart
Badge(
  label: Text('\$_contadorArticulos'),
  backgroundColor: Colors.red,
  textColor: Colors.white,
  largeSize: 22,
  child: const Icon(Icons.shopping_cart, size: 60),
)
```

### Dónde lo usaría en Mercado Campesino
Directo sobre el ícono de la canasta de compras del usuario en el AppBar para actualizar dinámicamente cuántas canastas o bultos de papas, frutas o verduras ha añadido el cliente antes de liquidar el pedido.

### Fuentes y ayudas usadas
* Documentación oficial de Flutter: https://flutter.dev
