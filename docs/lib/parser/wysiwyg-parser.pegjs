{
    const comprobar_atributo = function(atributo, validos) {
        return validos.indexOf(atributo) !== -1;
    };
    const sanitizar_dobles_comillas = function(atributo) {
        return atributo.replace('"', "");
    };
    const reducir_nombre_de_tag = function(tag) {
        if(tag === "negrita") {
            return "b";
        } else if(tag === "cursiva") {
            return "i";
        } else if(tag === "subrayado") {
            return "u";
        } else if(tag === "tachado") {
            return "del";
        } else if(tag === "fuente") {
            return "span";
        } else if(tag === "color_de_fondo") {
            return "span";
        } else if(tag === "color_de_letra") {
            return "span";
        } else if(tag === "alineado") {
            return "span";
        } else if(tag === "lista_ordenada") {
            return "ol";
        } else if(tag === "lista_desordenada") {
            return "ul";
        } else if(tag === "punto") {
            return "li";
        } else if(tag === "flotacion") {
            return "span";
        } else if(tag === "link") {
            return "a";
        } else if(tag === "imagen") {
            return "img";
        } else if(tag === "codigo") {
            return "code";
        } else if(tag === "tabla") {
            return "table";
        } else if(tag === "fila") {
            return "tr";
        } else if(tag === "celda") {
            return "td";
        } 
    };
    const reducir_atributos_de_tag = function(tag, attrs) {
        if(tag === "negrita") {
            for(let i=0; i<attrs.length; i++) {
                const attr = attrs[i];
                const es_atributo_valido = comprobar_atributo(attr.atributo, []);
                if(!es_atributo_valido) throw new Error(`Atributo «${attr.atributo}» no es válido para tag «${tag}»`);
            }
        } else if(tag === "cursiva") {
            for(let i=0; i<attrs.length; i++) {
                const attr = attrs[i];
                const es_atributo_valido = comprobar_atributo(attr.atributo, []);
                if(!es_atributo_valido) throw new Error(`Atributo «${attr.atributo}» no es válido para tag «${tag}»`);
            }
        } else if(tag === "subrayado") {
            for(let i=0; i<attrs.length; i++) {
                const attr = attrs[i];
                const es_atributo_valido = comprobar_atributo(attr.atributo, []);
                if(!es_atributo_valido) throw new Error(`Atributo «${attr.atributo}» no es válido para tag «${tag}»`);
            }
        } else if(tag === "tachado") {
            for(let i=0; i<attrs.length; i++) {
                const attr = attrs[i];
                const es_atributo_valido = comprobar_atributo(attr.atributo, []);
                if(!es_atributo_valido) throw new Error(`Atributo «${attr.atributo}» no es válido para tag «${tag}»`);
            }
        } else if(tag === "fuente") {
            for(let i=0; i<attrs.length; i++) {
                const attr = attrs[i];
                const es_atributo_valido = comprobar_atributo(attr.atributo, ["de"]);
                if(!es_atributo_valido) throw new Error(`Atributo «${attr.atributo}» no es válido para tag «${tag}»`);
                return ` style="font-size: ${sanitizar_dobles_comillas(attr.valor)};"`;
            }
        } else if(tag === "color_de_fondo") {
            for(let i=0; i<attrs.length; i++) {
                const attr = attrs[i];
                const es_atributo_valido = comprobar_atributo(attr.atributo, ["de"]);
                if(!es_atributo_valido) throw new Error(`Atributo «${attr.atributo}» no es válido para tag «${tag}»`);
                return ` style="background-color: ${sanitizar_dobles_comillas(attr.valor)};"`;
            }
        } else if(tag === "color_de_letra") {
            for(let i=0; i<attrs.length; i++) {
                const attr = attrs[i];
                const es_atributo_valido = comprobar_atributo(attr.atributo, ["de"]);
                if(!es_atributo_valido) throw new Error(`Atributo «${attr.atributo}» no es válido para tag «${tag}»`);
                return ` style="color: ${sanitizar_dobles_comillas(attr.valor)};"`;
            }
        } else if(tag === "alineado") {
            for(let i=0; i<attrs.length; i++) {
                const attr = attrs[i];
                const es_atributo_valido = comprobar_atributo(attr.atributo, ["a"]);
                if(!es_atributo_valido) throw new Error(`Atributo «${attr.atributo}» no es válido para tag «${tag}»`);
                return ` style="text-align: ${sanitizar_dobles_comillas(attr.valor)};"`;
            }
        } else if(tag === "lista_ordenada") {
            for(let i=0; i<attrs.length; i++) {
                const attr = attrs[i];
                const es_atributo_valido = comprobar_atributo(attr.atributo, []);
                if(!es_atributo_valido) throw new Error(`Atributo «${attr.atributo}» no es válido para tag «${tag}»`);
            }
        } else if(tag === "punto") {
            for(let i=0; i<attrs.length; i++) {
                const attr = attrs[i];
                const es_atributo_valido = comprobar_atributo(attr.atributo, []);
                if(!es_atributo_valido) throw new Error(`Atributo «${attr.atributo}» no es válido para tag «${tag}»`);
            }
        } else if(tag === "lista_desordenada") {
            for(let i=0; i<attrs.length; i++) {
                const attr = attrs[i];
                const es_atributo_valido = comprobar_atributo(attr.atributo, []);
                if(!es_atributo_valido) throw new Error(`Atributo «${attr.atributo}» no es válido para tag «${tag}»`);
            }
        } else if(tag === "flotacion") {
            for(let i=0; i<attrs.length; i++) {
                const attr = attrs[i];
                const es_atributo_valido = comprobar_atributo(attr.atributo, ["a"]);
                if(!es_atributo_valido) throw new Error(`Atributo «${attr.atributo}» no es válido para tag «${tag}»`);
                return ` style="width: 50%; float: ${sanitizar_dobles_comillas(attr.valor)};"`;
            }
        } else if(tag === "link") {
            for(let i=0; i<attrs.length; i++) {
                const attr = attrs[i];
                const es_atributo_valido = comprobar_atributo(attr.atributo, ["a"]);
                if(!es_atributo_valido) throw new Error(`Atributo «${attr.atributo}» no es válido para tag «${tag}»`);
                return ` href="${sanitizar_dobles_comillas(attr.valor)}"`;
            }
        } else if(tag === "imagen") {
            for(let i=0; i<attrs.length; i++) {
                const attr = attrs[i];
                const es_atributo_valido = comprobar_atributo(attr.atributo, ["de"]);
                if(!es_atributo_valido) throw new Error(`Atributo «${attr.atributo}» no es válido para tag «${tag}»`);
                return ` src="${sanitizar_dobles_comillas(attr.valor)}"`;
            }
        } else if(tag === "codigo") {
            for(let i=0; i<attrs.length; i++) {
                const attr = attrs[i];
                const es_atributo_valido = comprobar_atributo(attr.atributo, []);
                if(!es_atributo_valido) throw new Error(`Atributo «${attr.atributo}» no es válido para tag «${tag}»`);
            }
        } else if(tag === "tabla") {
            for(let i=0; i<attrs.length; i++) {
                const attr = attrs[i];
                const es_atributo_valido = comprobar_atributo(attr.atributo, []);
                if(!es_atributo_valido) throw new Error(`Atributo «${attr.atributo}» no es válido para tag «${tag}»`);
            }
        } else if(tag === "fila") {
            for(let i=0; i<attrs.length; i++) {
                const attr = attrs[i];
                const es_atributo_valido = comprobar_atributo(attr.atributo, ["expandida"]);
                if(!es_atributo_valido) throw new Error(`Atributo «${attr.atributo}» no es válido para tag «${tag}»`);
                return ` rowspan="${sanitizar_dobles_comillas(attr.valor)}"`;
            }
        } else if(tag === "celda") {
            for(let i=0; i<attrs.length; i++) {
                const attr = attrs[i];
                const es_atributo_valido = comprobar_atributo(attr.atributo, ["expandida"]);
                if(!es_atributo_valido) throw new Error(`Atributo «${attr.atributo}» no es válido para tag «${tag}»`);
                return ` colspan="${sanitizar_dobles_comillas(attr.valor)}"`;
            }
        }
        return "";
    };
    const reducir_tag = function({ apertura, atributos, contenido }) {
        const nombre_de_tag = apertura.substr(1);
        const nombre_de_tag_html = reducir_nombre_de_tag(nombre_de_tag);
        let salida = "";
        salida += "<";
        salida += nombre_de_tag_html;
        salida += reducir_atributos_de_tag(nombre_de_tag, atributos);
        salida += ">";
        salida += contenido;
        salida += "</" + nombre_de_tag_html + ">";
        return salida;
    };
    const reducir_texto_normal = function(texto) {
        let salida = "";
        salida += texto
            .replace(/</g, "&lt;")
            .replace(/>/g, "&gt;")
            .replace(/\r\n/g, "<br/>\n")
            .replace(/\n/g, "<br/>\n");
        return salida;
    };
    const reducir_texto_valido = function(tokens) {
        let salida = "";
        for(let i=0; i<tokens.length; i++) {
            const token = tokens[i];
            salida += token;
        }
        return salida;
    };
}

Lenguaje = Texto_valido

Texto_valido =
  tokens:(Tag / Tag_escapado / Texto_normal)*
    { return reducir_texto_valido(tokens) }

Tag = tag:(Tag_negrita
  / Tag_cursiva
  / Tag_subrayado
  / Tag_tachado
  / Tag_fuente
  / Tag_color_de_fondo
  / Tag_color_de_letra
  / Tag_alineado
  / Tag_lista_ordenada
  / Tag_punto
  / Tag_lista_desordenada
  / Tag_flotacion
  / Tag_link
  / Tag_imagen
  / Tag_codigo
  / Tag_tabla
  / Tag_fila
  / Tag_celda)
    { return tag }

Tag_escapado = 
  escape:"\\"
  tag:Tag 
    { return tag }

Texto_normal =
  texto:(!(Tag/Tag_escapado/Cierre_de_tag).)
    { return reducir_texto_normal(text()) }

Cierre_de_tag = "[/"

Tag_negrita = 
  apertura:"[negrita"
  atributos:Atributos* 
  cierre:"]"
  contenido:Texto_valido
  cierre_de_tag:"[/negrita]"
    { return reducir_tag({ apertura, atributos, contenido })}

Tag_cursiva = 
  apertura:"[cursiva"
  atributos:Atributos* 
  cierre:"]"
  contenido:Texto_valido
  cierre_de_tag:"[/cursiva]"
    { return reducir_tag({ apertura, atributos, contenido })}

Tag_subrayado = 
  apertura:"[subrayado"
  atributos:Atributos* 
  cierre:"]"
  contenido:Texto_valido
  cierre_de_tag:"[/subrayado]"
    { return reducir_tag({ apertura, atributos, contenido })}

Tag_tachado = 
  apertura:"[tachado"
  atributos:Atributos* 
  cierre:"]"
  contenido:Texto_valido
  cierre_de_tag:"[/tachado]"
    { return reducir_tag({ apertura, atributos, contenido })}

Tag_fuente = 
  apertura:"[fuente"
  atributos:Atributos* 
  cierre:"]"
  contenido:Texto_valido
  cierre_de_tag:"[/fuente]"
    { return reducir_tag({ apertura, atributos, contenido })}

Tag_color_de_fondo = 
  apertura:"[color_de_fondo"
  atributos:Atributos* 
  cierre:"]"
  contenido:Texto_valido
  cierre_de_tag:"[/color_de_fondo]"
    { return reducir_tag({ apertura, atributos, contenido })}

Tag_color_de_letra = 
  apertura:"[color_de_letra"
  atributos:Atributos* 
  cierre:"]"
  contenido:Texto_valido
  cierre_de_tag:"[/color_de_letra]"
    { return reducir_tag({ apertura, atributos, contenido })}

Tag_alineado = 
  apertura:"[alineado"
  atributos:Atributos* 
  cierre:"]"
  contenido:Texto_valido
  cierre_de_tag:"[/alineado]"
    { return reducir_tag({ apertura, atributos, contenido })}

Tag_lista_ordenada = 
  apertura:"[lista_ordenada"
  atributos:Atributos* 
  cierre:"]"
  contenido:Texto_valido
  cierre_de_tag:"[/lista_ordenada]"
    { return reducir_tag({ apertura, atributos, contenido })}

Tag_punto = 
  apertura:"[punto"
  atributos:Atributos* 
  cierre:"]"
  contenido:Texto_valido
  cierre_de_tag:"[/punto]"
    { return reducir_tag({ apertura, atributos, contenido })}

Tag_lista_desordenada = 
  apertura:"[lista_desordenada"
  atributos:Atributos* 
  cierre:"]"
  contenido:Texto_valido
  cierre_de_tag:"[/lista_desordenada]"
    { return reducir_tag({ apertura, atributos, contenido })}

Tag_flotacion = 
  apertura:"[flotacion"
  atributos:Atributos* 
  cierre:"]"
  contenido:Texto_valido
  cierre_de_tag:"[/flotacion]"
    { return reducir_tag({ apertura, atributos, contenido })}

Tag_link = 
  apertura:"[link"
  atributos:Atributos* 
  cierre:"]"
  contenido:Texto_valido
  cierre_de_tag:"[/link]"
    { return reducir_tag({ apertura, atributos, contenido })}

Tag_imagen = 
  apertura:"[imagen"
  atributos:Atributos* 
  cierre:"]"
  contenido:Texto_valido
  cierre_de_tag:"[/imagen]"
    { return reducir_tag({ apertura, atributos, contenido })}

Tag_codigo = 
  apertura:"[codigo"
  atributos:Atributos* 
  cierre:"]"
  contenido:Texto_valido
  cierre_de_tag:"[/codigo]"
    { return reducir_tag({ apertura, atributos, contenido })}

Tag_tabla = 
  apertura:"[tabla"
  atributos:Atributos* 
  cierre:"]"
  contenido:Texto_valido
  cierre_de_tag:"[/tabla]"
    { return reducir_tag({ apertura, atributos, contenido })}

Tag_fila = 
  apertura:"[fila"
  atributos:Atributos* 
  cierre:"]"
  contenido:Texto_valido
  cierre_de_tag:"[/fila]"
    { return reducir_tag({ apertura, atributos, contenido })}

Tag_celda = 
  apertura:"[celda"
  atributos:Atributos* 
  cierre:"]"
  contenido:Texto_valido
  cierre_de_tag:"[/celda]"
    { return reducir_tag({ apertura, atributos, contenido })}

Atributos = 
  espacio:_+
  atributo:Nombre_de_atributo
  igual:"="
  valor:Valor_de_atributo
    { return { atributo, valor } }

Nombre_de_atributo =
  nombre:([A-Za-z0-9] / "_" / "-" / "$")+
    { return text() }

Valor_de_atributo = 
  apertura:('"')
  contenido:Negacion_de_dobles_comillas
  cierre:('"')
    { return contenido }

Negacion_de_dobles_comillas = 
  texto:(!('"').)+
    { return text() }

_ = ( __ / ___ )
__ = ( " " / "\t" )
___ = ( "\r\n" / "\r" / "\n" )