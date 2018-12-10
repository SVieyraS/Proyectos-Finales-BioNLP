1. Primero se corre el Make_grid.py, toma como parametros pseudoGrid.conll, pero debido al tamaño del archivo, no se pudo subir al git.
2. Posteriormente se ejecuta Grid.sh para crear las tablas que utilizara train_cross_val.py
3. Ejecutamos train_cross_val.py con la combinatoria de elemento necesarios.
   En la carpeta experimentos, tenemos ejemplos de las combinatorias a ejecutarse
4. Cuando todos los reportes esten en la carpeta reports, se ejecuta Features.py para obtener los valores de evaluacion de cada modelo
