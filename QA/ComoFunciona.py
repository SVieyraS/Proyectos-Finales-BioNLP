# -*- encoding: utf-8 -*-

##### Bioinformatics 1, Semester 2019-1
## NOTES: Python 3.7,v4.0, Oct 7th, 2018
## Author: Jocksan Villavicencio Villavicencio, LCG-UNAM, Mexico
## jocksanv@lcg.unam.mx
#==================================================================================================
#                                            GOAL
# To get informative triplets to ansewer the question How it works?
#--------------------------------------------------------------------------------------------------
# Parameters:
# 1) --inputFiles In the same directory, files from OpenIE semi-parse salmonella__fil5.txt
# Ouput:
# 1) Table for MySQL
# Execution:
# python3 ComoFunciona.py
#################################################################################################
#                                        MAIN PROGRAM                                           #
#################################################################################################

import nltk

salmo =  open ("salmonella_how.txt","w", encoding='utf-8')
with open('salmonella_fil5.txt', encoding='utf-8') as sal:
    for index, line in enumerate(sal):
        words = line.split()
        if index == 0:
            ent = [words[0],words[1]]
            line2 = words
            lineT = line.split('\t')
        elif [words[0],words[1]] == ent:
            if len(line2) < len(words):
                line2 = words
                lineT = line.split('\t')
        elif [words[0],words[1]] != ent:
            ent = [words[0],words[1]]
            #if words[0] in genetag:
            if lineT[1].split()[0] != lineT[2].split()[0]:
                #if nltk.pos_tag(lineT[2].split())[-1][1] != 'VBZ' or nltk.pos_tag(lineT[2].split())[-1][1] != 'VBN' :
                if nltk.pos_tag(lineT[1].split())[0][1] == 'VBZ' and lineT[1].split()[0] != 'is' :
                    for k in line2: 
                        if (k in genetag):
                            salmo.write(k + '\t'+ '\t'.join(lineT))
                            #print(k + '\t'+ '\t'.join(lineT))
                        #break
            elif lineT[1].split()[0] == lineT[2].split()[0]:
                lineT[2]=lineT[2][1:]
                #if nltk.pos_tag(lineT[2].split())[-1][1] != 'VBZ' or nltk.pos_tag(lineT[2].split())[-1][1] != 'VBN' :
                if nltk.pos_tag(lineT[1].split())[0][1] == 'VBZ' and lineT[1].split()[0] != 'is' :
                    for k in line2: 
                        if (k in genetag):
                            salmo.write(k + '\t'+ '\t'.join(lineT))
                            #print(k + '\t'+ '\t'.join(lineT))
                        #break
            line2 = words
            lineT = line.split('\t')
salmo.close()