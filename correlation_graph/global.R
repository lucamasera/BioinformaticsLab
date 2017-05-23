library(igraph)

layouts <<- list(
  'Auto' = layout.auto,
  'Circular layout' = layout.circle,
  'Fruchterman layout' = layout.fruchterman.reingold,
  'Davidson layout' = layout.davidson.harel,
  'Random layout' = layout.random
)

ge_data <- read.csv('gene_expression_data.csv')

c_matrix <- cor(ge_data)


get_adj_matrix <- function(correlation_matrix, cut_off){
  adj_matrix <- c_matrix
  adj_matrix <- adj_matrix - diag(dim(adj_matrix)[1])
  
  adj_matrix[adj_matrix<cut_off] <- 0
  adj_matrix[adj_matrix>=cut_off] <- 1
  return(adj_matrix)
}