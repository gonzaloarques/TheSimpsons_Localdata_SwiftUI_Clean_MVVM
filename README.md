Proyecto con SwiftUI y arquitectura limpia + MVVM (como indica Apple) para mostrar un listado (a través de un JSON e imágenes locales) de varios Simpsons.
Para simplificar la arquitectura, cada componente (o casi) tendrá la siguiente lógica:
- Fichero de modelos: Almacenamos los modelos DTO (es decir, los que son iguales al origen (API, json local, etc)) y también los modelos (visuales) para la vista (junto a sus transformaciones necesarias para la misma).
- Fichero de repositorio: Almacenamos las llamadas al origen de los datos (API, json local, etc).
- Fichero de VM (ViewModel): Encargado de hacer las llamadas que tiene almacenadas el repositorio, y almacenarlas en el modelo (visual) para entregárselo a la vista.
- Fichero de vista: Contiene toda la parte visual del componente, utilizando el modelo de datos (visual) para mostrar los datos.

Al utilizar un JSON e imágenes locales para los datos, este repositorio sirve como introducción a SwiftUI y la arquitectura limpia, pues es más sencillo. 
Tengo otro proyecto igual a este de los Simpson, pero utilizando la API para obtener los datos.
