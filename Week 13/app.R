library(shiny)
ui <- fluidPage(
  titlePanel("P-value from z score"),
  sidebarLayout(
    sidebarPanel(
      numericInput("z","Z score",0)
    ),
    mainPanel("p-value",
              textOutput("P-value"))
)
)
server <- function(z)
{output <- 2*pnorm(-abs(z))
  return(output)
}
shinyApp(ui = ui, server = server)