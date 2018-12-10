cat Grid_RI_train.txt Grid_OTHER_train.txt > pre_traindata.txt
cat Grid_RI_test.txt Grid_OTHER_test.txt > pre_testdata.txt

#Se modifica el numero de columnas según las caracteristicas que se usaran (1: Tokens/words 2:Lemmas, 3:Pos tags, 4:NER)
cut -f1,2,3,4 pre_traindata.txt > trainData.txt
cut -f1,2,3,4 pre_testdata.txt > testData.txt

cut -f5 pre_traindata.txt > trainClasses.txt
cut -f5 pre_testdata.txt > testClasses.txt

rm pre_testdata.txt pre_traindata.txt