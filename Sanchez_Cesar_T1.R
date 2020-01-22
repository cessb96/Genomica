
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

#Sin librerias
#Se creo una secuencia de DNA con ayuda de la función DNAstring de Biostrings
secuencia1 <- DNAString("AGCTTTTCATTCTGACTGCAACGGGCAATATGTCTCTGTGTGGATTAAAAAAAGAGTGTCTGATAGCAGC")
secuencia1
length(secuencia1)
#Se crearon 4 objetos para contabilizar los 4 nucleotidos
cuentaA <- 0
cuentaT <- 0
cuentaG <- 0
cuentaC <- 0

#Se utilizó un cilo For y estructuras de selecció  para comparar y contar los nucleotidos
for (i in length(secuencia1)){
  if ("A" == secuencia1[i]){
    print(cuentaA <- cuentaA+1)
  }else if ("T" == secuencia1[i]){
    print(cuentaT <- cuentaT+1)
  }else if ("G" == secuencia1[i]){
    print(cuentaG <- cuentaG+1)
  }else if ("C" == secuencia1[i]){
    print(cuentaC == cuentaC+1)
  }
}

#Complementing a Strand of DNA 
#Se crea una secuencia de DNA con la función DNAString
#Útiluizando una librería especializada, se utiliza complement y se obtene
#la secuencia complementaria

seq2 <- DNAString("AAAACCCGGT")
seq2
complentaria <- complement(seq2)
complentaria

#Sin librerias

#Se crea una cadena de DNA con la función DNAstring de Biostrings
secuencia3 <- DNAString("AAAACCCGGT")
secuencia3

#Se utilizo un cilco for y estructuras de selección para comparar la secuencia
#y obtener su complementaría 
for (i in length(secuencia3)){
  if ("A" == secuencia3[i]){
    return("T")
  }else if ("T" == secuencia3[i]){
    return("A")
  }else if ("G" == secuencia3[i]){
    return("C")
  }else if ("C" == secuencia3[i]){
    return("G")
  }
}
