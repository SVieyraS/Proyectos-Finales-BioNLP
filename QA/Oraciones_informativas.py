##### Bioinformatics 1, Semester 2019-1
## NOTES: Python 3.7,v4.0, Oct 7th, 2018
## Author: Jocksan Villavicencio Villavicencio, LCG-UNAM, Mexico
## jocksanv@lcg.unam.mx
#==================================================================================================
#                                            GOAL
# Obtains triplets with entities in it
#--------------------------------------------------------------------------------------------------
# Parameters:
# 1) --inputFiles In the same directory, files from OpenIE semi-parse salmonella_ent.txt, and files
#          obtain the dictionaries
# Ouput:
# 1) Document with triples with entities
# Execution:
# python3 Oraciones_informativas.py
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
salmo =  open("salmonella_ent.txt","w", encoding='utf-8')
#reads semi-parse documet
with open(r"salmonella_ora.txt",encoding='utf-8') as sal:
        #Iterates in every line and writes only the ones with entities on the documet
        for line in sal:
            line2 = line.split('\t')
            line = line.split()
            if any(k in genetag for k in line): salmo.write('\t'.join(line2))
salmo.close()
