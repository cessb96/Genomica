
#Para realizar los ejercicios, primero es necesario instalar Bioconductor y Biostrings

(!requireNamespace("BiocManager", quietly = TRUE))
  install.packages("BiocManager")
BiocManager::install(version = "3.10")
if (!requireNamespace("BiocManager", quietly = TRUE))
  install.packages("BiocManager")

BiocManager::install("Biostrings")


#Problema1 A partir de las siguientes secuencias concatenadas de RNA que te
#envío como archivo adjunto en formato fasta encuentra (usando libreríasespecializadas) 
#la secuencia correspondiente de aminoácidos.
#Se lee el archivo FASTA con Biostrings, y se utiliza la función readRNAStringset
#despues se obtinenen los aa con ayuda de la función translate

RNA <- readRNAStringSet("first.fasta")
RNA
aminoacidos <- translate(RNA)
aminoacidos

#problema2 Escoge dos problemas de la plataforma Rosalind
#Counting DNA Nucleotides 
#Se crea una secuencia de DNA con la función DNAString
#Útiluizando una librería especializada, se utiliza alphabetFrequency y se obtiene 
#el numero de nucleotidos

seq1 <- DNAString("AGCTTTTCATTCTGACTGCAACGGGCAATATGTCTCTGTGTGGATTAAAAAAAGAGTGTCTGATAGCAGC")
seq1
frecuencias <- alphabetFrequency(seq1)
frecuencias

#Complementing a Strand of DNA 
#Se crea una secuencia de DNA con la función DNAString
#Útiluizando una librería especializada, se utiliza complement y se obtene
#la secuencia complementaria

seq2 <- DNAString("AAAACCCGGT")
seq2
complentaria <- complement(seq2)
complentaria
