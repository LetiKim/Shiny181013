install.packages("shiny")
install.packages("shinydashboard")
install.packages("shinyjs")
library("shiny")
library("shinydashboard")
library("shinyjs")


ui <- fluidPage(
  checkboxInput("chk",
                     label = h3("선택"),
                     value = TRUE
  ),
  hr(),
  fluidRow(column(3, verbatimTextOutput("value")))
)

server <- function(input, output, session) {
  output$value <- renderText({input$chk})
}

shinyApp(ui, server)
