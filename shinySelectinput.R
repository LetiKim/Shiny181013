install.packages("shiny")
install.packages("shinydashboard")
install.packages("shinyjs")
library("shiny")
library("shinydashboard")
library("shinyjs")


ui <- fluidPage(
  selectInput("select",
                label = h3("셀렉트 박스"),
                choices = list(
                  "선택1" = 1,
                  "선택2" = 2,
                  "선택3" = 3
                )
  ),
  hr(),
  fluidRow(column(3, verbatimTextOutput("value")))
)

server <- function(input, output, session) {
  output$value <- renderText({input$chk})
}

shinyApp(ui, server)
