 #################################################################################################
 ## Frequency -Remove Stop Words 
 ################################
 ## SVM-linear-model-frequency-n-1
 python train_cross_val.py  --inputPath C:\Users\Jocksan\Desktop\BioNLP\Datasets\BiologicalEntity\grids\Clasificador\1-3 --inputTrainingData trainData.txt  --inputTrainingClasses trainClasses.txt  --inputTestingData testData.txt  --inputTestingClasses testClasses.txt  --outputModelPath C:\Users\Jocksan\Desktop\BioNLP\Datasets\BiologicalEntity\grids\Clasificador\1-3\models --outputModelFile SVM-linear-model-frequency-n-1.mod  --outputReportPath C:\Users\Jocksan\Desktop\BioNLP\Datasets\BiologicalEntity\grids\Clasificador\1-3\reports --outputReportFile SVM-linear-model-frequency-n-1.txt  --classifier SVM  --kernel linear --reduction CHI2100  --saveData  --vectorizer f  --ngrinitial 1  --ngrfinal 1 
 

  ## SVM-linear-model-frequency-n-2
 python train_cross_val.py  --inputPath C:\Users\Jocksan\Desktop\BioNLP\Datasets\BiologicalEntity\grids\Clasificador\1-3 --inputTrainingData trainData.txt  --inputTrainingClasses trainClasses.txt  --inputTestingData testData.txt  --inputTestingClasses testClasses.txt  --outputModelPath C:\Users\Jocksan\Desktop\BioNLP\Datasets\BiologicalEntity\grids\Clasificador\1-3\models --outputModelFile SVM-linear-model-frequency-n-2.mod  --outputReportPath C:\Users\Jocksan\Desktop\BioNLP\Datasets\BiologicalEntity\grids\Clasificador\1-3\reports --outputReportFile SVM-linear-model-frequency-n-2.txt  --classifier SVM  --kernel linear --reduction CHI2100  --saveData  --vectorizer f  --ngrinitial 2  --ngrfinal 2 
 
 
  ## SVM-linear-model-frequency-n-1-2
 python train_cross_val.py  --inputPath C:\Users\Jocksan\Desktop\BioNLP\Datasets\BiologicalEntity\grids\Clasificador\1-3 --inputTrainingData trainData.txt  --inputTrainingClasses trainClasses.txt  --inputTestingData testData.txt  --inputTestingClasses testClasses.txt  --outputModelPath C:\Users\Jocksan\Desktop\BioNLP\Datasets\BiologicalEntity\grids\Clasificador\1-3\models --outputModelFile SVM-linear-model-frequency-n-1-2.mod  --outputReportPath C:\Users\Jocksan\Desktop\BioNLP\Datasets\BiologicalEntity\grids\Clasificador\1-3\reports --outputReportFile SVM-linear-model-frequency-n-1-2.txt  --classifier SVM --kernel linear --reduction CHI2100  --saveData  --vectorizer f  --ngrinitial 1  --ngrfinal 2 
 
 
################################
 ## SVM-rbf-model-frequency-n-1
 python train_cross_val.py  --inputPath C:\Users\Jocksan\Desktop\BioNLP\Datasets\BiologicalEntity\grids\Clasificador\1-3 --inputTrainingData trainData.txt  --inputTrainingClasses trainClasses.txt  --inputTestingData testData.txt  --inputTestingClasses testClasses.txt  --outputModelPath C:\Users\Jocksan\Desktop\BioNLP\Datasets\BiologicalEntity\grids\Clasificador\1-3\models --outputModelFile SVM-rbf-model-frequency-n-1.mod  --outputReportPath C:\Users\Jocksan\Desktop\BioNLP\Datasets\BiologicalEntity\grids\Clasificador\1-3\reports --outputReportFile SVM-rbf-model-frequency-n-1.txt --classifier SVM  --kernel rbf --reduction CHI2100  --saveData  --vectorizer f  --ngrinitial 1  --ngrfinal 1 
 

  ## SVM-rbf-model-frequency-n-2
 python train_cross_val.py  --inputPath C:\Users\Jocksan\Desktop\BioNLP\Datasets\BiologicalEntity\grids\Clasificador\1-3 --inputTrainingData trainData.txt  --inputTrainingClasses trainClasses.txt  --inputTestingData testData.txt  --inputTestingClasses testClasses.txt  --outputModelPath C:\Users\Jocksan\Desktop\BioNLP\Datasets\BiologicalEntity\grids\Clasificador\1-3\models --outputModelFile SVM-rbf-model-frequency-n-2.mod  --outputReportPath C:\Users\Jocksan\Desktop\BioNLP\Datasets\BiologicalEntity\grids\Clasificador\1-3\reports --outputReportFile SVM-rbf-model-frequency-n-2.txt  --classifier SVM  --kernel rbf --reduction CHI2100  --saveData  --vectorizer f  --ngrinitial 2  --ngrfinal 2 
 
 
  ## SVM-rbf-model-frequency-n-1-2
 python train_cross_val.py  --inputPath C:\Users\Jocksan\Desktop\BioNLP\Datasets\BiologicalEntity\grids\Clasificador\1-3 --inputTrainingData trainData.txt  --inputTrainingClasses trainClasses.txt  --inputTestingData testData.txt  --inputTestingClasses testClasses.txt  --outputModelPath C:\Users\Jocksan\Desktop\BioNLP\Datasets\BiologicalEntity\grids\Clasificador\1-3\models --outputModelFile SVM-rbf-model-frequency-n-1-2.mod  --outputReportPath C:\Users\Jocksan\Desktop\BioNLP\Datasets\BiologicalEntity\grids\Clasificador\1-3\reports --outputReportFile SVM-rbf-model-frequency-n-1-2.txt  --classifier SVM  --kernel rbf --reduction CHI2100  --saveData  --vectorizer f  --ngrinitial 1  --ngrfinal 2 
 
 
################################
 ## MultinomialNB-poly-model-frequency-n-1
 python train_cross_val.py  --inputPath C:\Users\Jocksan\Desktop\BioNLP\Datasets\BiologicalEntity\grids\Clasificador\1-3 --inputTrainingData trainData.txt  --inputTrainingClasses trainClasses.txt  --inputTestingData testData.txt  --inputTestingClasses testClasses.txt  --outputModelPath C:\Users\Jocksan\Desktop\BioNLP\Datasets\BiologicalEntity\grids\Clasificador\1-3\models --outputModelFile MultinomialNB-poly-model-frequency-n-1.mod  --outputReportPath C:\Users\Jocksan\Desktop\BioNLP\Datasets\BiologicalEntity\grids\Clasificador\1-3\reports --outputReportFile MultinomialNB-poly-model-frequency-n-1.txt  --classifier MultinomialNB  --reduction CHI2100  --saveData  --vectorizer f  --ngrinitial 1  --ngrfinal 1 
 

  ## MultinomialNB-poly-model-frequency-n-2
 python train_cross_val.py  --inputPath C:\Users\Jocksan\Desktop\BioNLP\Datasets\BiologicalEntity\grids\Clasificador\1-3 --inputTrainingData trainData.txt  --inputTrainingClasses trainClasses.txt  --inputTestingData testData.txt  --inputTestingClasses testClasses.txt  --outputModelPath C:\Users\Jocksan\Desktop\BioNLP\Datasets\BiologicalEntity\grids\Clasificador\1-3\models --outputModelFile MultinomialNB-poly-model-frequency-n-2.mod  --outputReportPath C:\Users\Jocksan\Desktop\BioNLP\Datasets\BiologicalEntity\grids\Clasificador\1-3\reports --outputReportFile MultinomialNB-poly-model-frequency-n-2.txt  --classifier MultinomialNB  --reduction CHI2100  --saveData  --vectorizer f  --ngrinitial 2  --ngrfinal 2 
 
  
  ## MultinomialNB-poly-model-frequency-n-1-2
 python train_cross_val.py  --inputPath C:\Users\Jocksan\Desktop\BioNLP\Datasets\BiologicalEntity\grids\Clasificador\1-3 --inputTrainingData trainData.txt  --inputTrainingClasses trainClasses.txt  --inputTestingData testData.txt  --inputTestingClasses testClasses.txt  --outputModelPath C:\Users\Jocksan\Desktop\BioNLP\Datasets\BiologicalEntity\grids\Clasificador\1-3\models --outputModelFile MultinomialNB-poly-model-frequency-n-1-2.mod  --outputReportPath C:\Users\Jocksan\Desktop\BioNLP\Datasets\BiologicalEntity\grids\Clasificador\1-3\reports --outputReportFile MultinomialNB-poly-model-frequency-n-1-2.txt  --classifier MultinomialNB  --reduction CHI2100  --saveData  --vectorizer f  --ngrinitial 1  --ngrfinal 2 

