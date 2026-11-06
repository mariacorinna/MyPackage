#'Calcola righe e colonne di una matrice Matrix.
#'
#' @param percorso_matrice Il percorso al file .mtx della matrice
#' @param output_file Il nome del file CSV in cui salvare la matrice convertita
#' @return Un vettore numerico con il numero di righe e di colonne
#' @export
colonne_righe <- function(percorso_matrice,output_file="output.csv") {

          mat<- as.matrix(readMM(percorso_matrice))
          write.csv(mat, file = output_file)
          return(c(nrow(mat), ncol(mat)))

}

library(Matrix)

