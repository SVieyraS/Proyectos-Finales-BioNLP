# -*- encoding: utf-8 -*-

##### Bioinformatics 1, Semester 2019-1
## NOTES: Python 3.7,v4.0, Oct 7th, 2018
## Author: Jocksan Villavicencio Villavicencio, LCG-UNAM, Mexico
## jocksanv@lcg.unam.mx
#==================================================================================================
#                                            GOAL
# To get informative triplets to ansewer the question What it is?
#--------------------------------------------------------------------------------------------------
# Parameters:
# 1) --inputFiles In the same directory, files from OpenIE semi-parse salmonella_es.txt, and files
#          obtain the dictionaries
# Ouput:
# 1) Pre-tables for MySQL
# Execution:
# python3 QueEs.py
#################################################################################################
#                                        MAIN PROGRAM                                           #
#################################################################################################
#Fills dictionaries
with open('GENE.txt') as gene:
    genetag = {key.split('\n')[0]:'GENE' for key in gene}

with open('TF.txt') as gene:
    TF = {key.split('\n')[0]:'TF' for key in gene}

with open('dictTU.txt') as gene:
    TU = {key.split('\n')[0]:'TU' for key in gene}

with open('dictSIGMAS_1grams.txt') as gene:
    sigmas1 = {key.split('\n')[0]:'SIGMAS_1' for key in gene}

with open('dictSIGMAS_2grams.txt') as gene:
    sigmas2 = {key.split('\n')[0]:'SIGMA_2' for key in gene}

genetag.update(TF)
genetag.update(TU)
genetag.update(sigmas1)
genetag.update(sigmas2)

#Opens a new document
salmo =  open ("salmonella_es_ent.txt","w", encoding='utf-8')
with open(r"salmonella_es.txt", encoding='utf-8') as sal:
    #iterates in every line enumerating them and getting the largest one of those which begins the same
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
            for k in line2:
                if (k in genetag):
                    salmo.write(k + '\t'+ '\t'.join(lineT))
            line2 = words
            lineT = line.split('\t')
salmo.close()
