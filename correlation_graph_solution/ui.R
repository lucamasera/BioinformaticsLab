fluidPage(
  headerPanel('Prova'),
  sidebarPanel(
    sliderInput(
      "cut_off", "Cut-off correlation:",
      min = 0.,  max = 1., value = 0.4
    ),
    hr(),
    selectInput(
      "layout", "Choose a layout:",
      choices = names(layouts), selected = 'Auto'
    )
  ),
  mainPanel(
    plotOutput("graph")
  )
)