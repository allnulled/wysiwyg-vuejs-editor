const parser = require(__dirname + "/../docs/lib/parser/wysiwyg-parser.js");
const fs = require("fs");
const ficheros = [
    "texto-1.txt",
    "texto-2.txt",
    "texto-3.txt"
];
for(let index = 0; index < ficheros.length; index++) {
    const fichero = ficheros[index];
    const contenido = fs.readFileSync(__dirname + "/samples/" + fichero).toString();
    const salida = parser.parse(contenido);
    fs.writeFileSync(__dirname + "/outputs/" + fichero.replace(".txt", ".html"), salida, "utf8");
}