fluidPage(
  headerPanel(
    # Here goes the title
  ),
  sidebarPanel(
    #insert a slider for the correlation cut off ranging from 0 to 1
    # we consider absolute correlation
    # use sliderinput, like in the histogram example
    
    # insert a selection input for the given layouts
    # follow the example in the word cloud
  ),
  mainPanel(
    plotOutput("graph")
  )
)