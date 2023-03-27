# famaf-year3

## Scripts utiles
### Dependencias necesarias
1. pandoc: 
  - Arch: `sudo pacman -S pandoc`
  - Debian: `sudo apt-get install pandoc`

2. PyMuPDF: `pip3 install pymupdf`

### Instalacion
```bash
cd scripts && ./install_scripts.sh
```

### Obtener solo paginas resaltadas
```bash
strip.py <pdf>
```

### Generar pdf usando archivo markdown
```bash
pandoc.sh <md>
```

## Como resaltar
### Caso general
1. Resaltar todos los H1
2. Resaltar todos los H2
3. Resaltar todos los H3
4. Generar markdown usando el pdf resaltado y crear pdf en base al markdown
```bash
python -m highext <pdf>
pandoc.sh <md_output>
```
5. Revisar y corregir de ser necesario:
    - Estructura de títulos de la tabla de contenidos.
    - Títulos o temas repetidos
6. Resaltar los H4 y el texto normal.

### Pdfs largos
1. Crear copia del pdf original sin resaltar
2. Resaltar la copia siguiendo los pasos del caso general

## Como pushear
### Caso general
Cada vez que se resuma algo pushear las siguientes cosas:
| Contenido                        | Ubicacion | Relevancia |
|----------------------------------|-----------|------------|
| PDF resaltado                    | material/ | Importane! |
| Markdown extraido del pdf        | apuntes/  | Opcional   |
| PDF generado en base al markdown | apuntes/  | Opcional   |

### Pdfs largos
1. Obtener solo las páginas resaltadas del pdf: `strip.py <pdf>`
2. Cambiar nombre del pdf recortado para que diga que capitulos contiene.
3. Seguir pasos del caso general.

