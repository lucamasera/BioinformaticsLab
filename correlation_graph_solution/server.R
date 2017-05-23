function(input, output) {

  output$graph <- renderPlot({
    g<-graph_from_adjacency_matrix(get_adj_matrix(c_matrix, input$cut_off))
    l <- layouts[[input$layout]](g)

    plot(
      g,
      layout=l,
      layout=layout.auto,
      vertex.size=4,
      vertex.label='',
      edge.arrow.size=0
      )
  })
}