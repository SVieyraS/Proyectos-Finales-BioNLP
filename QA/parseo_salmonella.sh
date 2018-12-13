##### Bioinformatics 1, Semester 2019-1
## NOTES: Python 3.7,v2.0, Oct 7th, 2018
## Author: Paulina Nunez, LCG-UNAM, Mexico
## pnunez@lcg.unam.mx
#==================================================================================================
#                                            GOAL
# Parse raw documents, cleaning inconsistencies, generation of upload files for MySQL
#--------------------------------------------------------------------------------------------------
# Parameters:
# 1) --inputFiles In the same directory, files from OpenIE named all_salmonella_tripletas.txt
# Ouput:
# 1) Parse documents
# 2) Pre-tables for MySQL
# Execution:
# ./parseo_salminella.sh
#################################################################################################
#                                        MAIN PROGRAM                                           #
#################################################################################################
#Gets triplets with 1.0 of score
perl -nae 'if(/^1\.0\t/){print $_;}' all_salmonella_tripletas.txt > salmonella_1.txt
#Getting only the columns with information
cut -f2,3,4 salmonella_1.txt > salmonella_ora.txt
echo "Se cortado el archivo"
#Running script of pyhton to obtain only triplets with entities
python3 Oraciones_informativas.py
echo "Se han procesado solo las oraciones informativas"
#Sort the document
sort -k1 salmonella_ent.txt > salmonella_sort.txt
#Regular expresions to parse the document
#Weird things at the beginig of the triplet
perl -nae 'if(!/^([0-9]|[A|C|G|T]{10}|.+\||%|ABSTRACT|\*|,|-|\.|>|~|[W|w]e|A\.A)/){print $_;}' salmonella_sort.txt > salmonella_fil.txt
#Unuseful stuff in any part of the triplet (Things that make reference to experiments)
perl -nae 'if (!/.*(were|assay|primer|PCR|mapped|(is|are|was|in)\sindicated|constructed|added|transformed|tagged|induced).*/){print $_;}' salmonella_fil.txt > salmonella_fil2.txt
#Reference the text we don't count on
perl -nae 'if (!/F(ig|IG)\..*$/){print $_;}' salmonella_fil2.txt > salmonella_fil3.txt
perl -nae 'if (!/.*\s(arrows|text).*/){print $_;}' salmonella_fil3.txt > salmonella_fil4.txt
#Unuseful triplets
perl -nae 'if (!/(was|is|are|has).(.+own|members|important|.{5}ed)$/){print $_;}'  salmonella_fil4.txt > salmonella_fil5.txt
echo "se ha terminado de filtrar"
#Gets triplets with the verbs that may ansewer the question What it is?
(grep -w 'are' salmonella_fil5.txt && grep -w 'is' salmonella_fil5.txt && grep -w 'was' salmonella_fil5.txt) > salmonella_es.txt
#Python script that gets the larger triplets and the outpu is a table format for mysql
python3 QueEs.py
python3 ComoFunciona.py
