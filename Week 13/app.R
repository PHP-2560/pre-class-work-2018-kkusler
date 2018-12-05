library(shiny)
ui <- fluidPage(
  titlePanel("P-value from z score"),
  sidebarLayout(
    sidebarPanel(
      numericInput("input","Z score",value=0),
      actionButton("button","Run"),
      width = 2
    ),
    mainPanel("p-value",
              output <- textOutput("PValue"))
)
)
server <- function(input, output)
{output$PValue <- 2*pnorm(-abs(input))
  renderText(output$PValue)
}
shinyApp(ui = ui, server = server)