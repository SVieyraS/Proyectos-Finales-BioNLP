# -*- encoding: utf-8 -*-

import os
import pandas as pd

# Make DataFrame for every folder on Reports
direct = [j for j in os.listdir(r".\reports")]
for folder in direct:
    names = [i for i in os.listdir(r".\reports\%s"%(folder))]
    columns = ['Accuracy', 'Precision', 'Recall', 'F-score', 'OTHER_p', 'OTHER_r', 'RI_p', 'RI_r', 'RI_f']
    scores = pd.DataFrame(columns=columns)

    for name in names: 
        with open(r".\reports\%s\%s"%(folder,name)) as report:
            for line in report:
                line = line.split()
                if len(line) == 0:
                    continue
                elif line[0] == 'Accuracy:':
                    name,_ = name.split('.')
                    info = [line[1]]
                elif line[0] == 'Precision:':
                    info.append(line[1])
                elif line[0] == 'Recall:':
                    info.append(line[1])
                elif line[0] == 'F-score:':
                    info.append(line[1])
                elif line[0] == 'OTHER':
                    info.append(line[1])
                    info.append(line[2])
                elif line[0] == 'RI':
                    info.append(line[1])
                    info.append(line[2])
                    info.append(line[3])
            scores.loc[name] = info
    scores.to_csv('scores%s.txt'%folder, sep = '\t')

# Make only one DataFrame for all folders
columns = ['Accuracy', 'Precision', 'Recall', 'F-score', 'OTHER_p', 'OTHER_r', 'RI_p', 'RI_r', 'RI_f']
scores = pd.DataFrame(columns=columns)
direct = [j for j in os.listdir(r".\reports")]
for folder in direct:
    names = [i for i in os.listdir(r".\reports\%s"%(folder))] 
    for name in names: 
        with open(r".\reports\%s\%s"%(folder,name)) as report:
            for line in report:
                line = line.split()
                if len(line) == 0:
                    continue
                elif line[0] == 'Accuracy:':
                    name = folder+'_'+name.split('.')[0]
                    info = [line[1]]
                elif line[0] == 'Precision:':
                    info.append(line[1])
                elif line[0] == 'Recall:':
                    info.append(line[1])
                elif line[0] == 'F-score:':
                    info.append(line[1])
                elif line[0] == 'OTHER':
                    info.append(line[1])
                    info.append(line[2])
                elif line[0] == 'RI':
                    info.append(line[1])
                    info.append(line[2])
                    info.append(line[3])
            scores.loc[name] = info
scores.to_csv('all_scores.txt', sep = '\t')

# Se correran estas líneas si se posee un visualizador de notebooks
# scores.sort_values('Accuracy', ascending=False)

# scores.sort_values('Precision', ascending=False)

# scores.sort_values('Recall', ascending=False)

# scores.sort_values('F-score', ascending=False)

# scores.sort_values('RI_p', ascending=False)

# scores.sort_values('RI_r', ascending=False)

# scores.sort_values('RI_f', ascending=False)