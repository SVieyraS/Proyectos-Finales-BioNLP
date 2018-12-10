# -*- encoding: utf-8 -*-

import pandas as pd
import numpy as np
import random

token_col, lemma_col, postag_col, ner_col = [], [], [], []

with open('pseudoGrid.conll', encoding='utf-8') as preGrid:
    for line in preGrid:
        line = line.split('\t')
        if line[0] == '1':
            token = [line[1]]
            lemma = [line[2]]
            pos = [line[3]]
            ner = [line[4]]
        elif (line[0] != '\n'):
            token.append(line[1])
            lemma.append(line[2])
            pos.append(line[3])
            ner.append(line[4])
        if line[0] == '\n':
            token_col.append(' '.join(token)), lemma_col.append(' '.join(lemma)), postag_col.append(' '.join(pos)), ner_col.append(' '.join(ner))
            token, lemma, pos, ner = [], [], [], []


x = np.array(["RI", "OTHER"])
info = np.repeat(x, [1133, 74753], axis=0)
grid_dict_v2 = {'Token': token_col, 'Lemma': lemma_col, 'POS tag': postag_col, 'NER': ner_col, 'Categorie':info}
grid_v2 = pd.DataFrame(data=grid_dict_v2)

## Generate random id and their complement to train and test RI data
id_all_RI = [i for i in range(0,1133)]
id_RI_train = random.sample(id_all_RI, k=793)
id_RI_test = [x for x in id_all_RI if x not in id_RI_train ]

## Generate random id and their complement to train and test OTHER data
id_all_OTHER = [i for i in range(1133,75886)]
id_OTHER_train = random.sample(id_all_OTHER, k=7000)
id_OTHER_test = random.sample([x for x in id_all_OTHER if x not in id_OTHER_train ], k=3000)

#Making the subset
grid_RI_test = grid_v2.take(id_RI_test)
grid_RI_train = grid_v2.take(id_RI_train)
grid_OTHER_test = grid_v2.take(id_OTHER_test)
grid_OTHER_train = grid_v2.take(id_OTHER_train)

#Writing out the document
grid_RI_test.to_csv('Grid_RI_test.txt', header = None, index = None, sep = '\t')
grid_RI_train.to_csv('Grid_RI_train.txt', header = None, index = None, sep = '\t')
grid_OTHER_test.to_csv('Grid_OTHER_test.txt', header = None, index = None, sep = '\t')
grid_OTHER_train.to_csv('Grid_OTHER_train.txt', header = None, index = None, sep = '\t')
