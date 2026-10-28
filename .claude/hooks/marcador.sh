#!/bin/sh
# Añade una línea a MARCADORES-blog-api.txt con fecha, herramienta y ruta absoluta del archivo modificado.
python3 -I -c '
import json, sys, datetime
data = json.load(sys.stdin)
ruta = data.get("tool_input", {}).get("file_path", "")
linea = "%s %s %s\n" % (datetime.datetime.now().isoformat(timespec="seconds"), data.get("tool_name", ""), ruta)
with open("/Users/amartin/projects/blog/blog-api/MARCADORES-blog-api.txt", "a") as f:
    f.write(linea)
'
