# editor-wysiwyg-vuejs

Editor tipo WYSIWYG para Vue.js (versión 2).

## Demo

Puedes ir a la demo online aquí:

 - [https://allnulled.github.io/wysiwyg-vuejs-editor/](https://allnulled.github.io/wysiwyg-vuejs-editor/)

## Instalación

Desde consola:

```sh
npm i -s editor-wysiwyg-vuejs
```

Luego, desde el HTML hay que importar 3 ficheros: el parser, el componente y los estilos.

```html
<script src="./node_modules/editor-wysiwyg-vuejs/docs/lib/parser/wysiwyg-parser.js"></script>
<script src="./node_modules/editor-wysiwyg-vuejs/docs/lib/editor-wysiwyg-vuejs/editor-wysiwyg-vuejs.js"></script>
<link  href="./node_modules/editor-wysiwyg-vuejs/docs/editor-wysiwyg-vuejs/editor-wysiwyg-vuejs.css" rel="stylesheet" />
```

Para que los estilos se vean como en el [ejemplo](https://allnulled.github.io/editor-wysiwyg-vuejs), también querrás importar los estilos de win7.css. Puedes hacerlo desde un CDN o desde aquí directamente:

```html
<link  href="./node_modules/editor-wysiwyg-vuejs/docs/win7css/win7.scoped.2.css" rel="stylesheet" />
```

También puedes copiar y pegar los ficheros en la localización que más te convenga.

## Uso

El editor tiene 3 modos: guía, editar y visualizar.

Las normas del editor son las siguientes:


#### Negrita

```
[negrita][/negrita]
```

#### Cursiva

```
[cursiva][/cursiva]
```

#### Subrayado

```
[subrayado][/subrayado]
```

#### Tachado

```
[tachado][/tachado]
```

#### Tamaño de fuente

```
[fuente de="12px"][/fuente]
```

#### Color de fondo

```
[color_de_fondo de="black"][/color_de_fondo]
```

#### Color de letra

```
[color_de_letra de="white"][/color_de_letra]
```

#### Alineado izquierda

```
[alineado a="left"][/alineado]
```

#### Alineado derecha

```
[alineado a="right"][/alineado]
```

#### Alineado centro

```
[alineado a="center"][/alineado]
```

#### Alineado justificado

```
[alineado a="justify"][/alineado]
```

#### Lista ordenada

```
[lista_ordenada]
  [punto][/punto]
[/lista_ordenada]
```

#### Lista desordenada

```
[lista_desordenada]
  [punto][/punto]
[/lista_desordenada]
```

#### Flotación izquierda

```
[flotacion a="left"][/flotacion]
```

#### Flotación derecha

```
[flotacion a="right"][/flotacion]
```

#### Link

```
[link a="url"][/link]
```

#### Imagen

```
[imagen de="url"][/imagen]
```

#### Codigo

```
[codigo][/codigo]
```

#### Tabla

```
[tabla]
  [fila expandida="4"]
    [celda][/celda]
    [celda expandida="3"][/celda]
    [celda][/celda]
  [/fila]
[/tabla] 
```

## API

La API del componente es sencilla e intuitiva:

```js
$componente.modo                 // modo actual
$componente.contenido_en_codigo  // código original
$componente.contenido_en_html    // código HTML resultante
$componente.error                // último error en la transpilación
$componente.transpilar_codigo()  // pasa del código original al HTML
$componente.cambiar_a_modo(modo) // modo = "ayuda" | "vista" | "editor"
```

Cuando el método `cambiar_a_modo('vista')` es llamado (con el parámetro `'vista'`), se hace una llamada a `transpilar_codigo()` que llenará el valor de `contenido_en_html`.