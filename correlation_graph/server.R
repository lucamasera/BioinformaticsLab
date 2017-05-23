
g <- graph_from_adjacency_matrix(get_adj_matrix(c_matrix, cut_off))
l <- layouts[[layout]](g)

plot(
  g,
  layout=l,
  vertex.size=4,
  vertex.label='',
  edge.arrow.size=0
  )