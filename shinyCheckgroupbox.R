install.packages("shiny")
install.packages("shinydashboard")
install.packages("shinyjs")
library("shiny")
library("shinydashboard")
library("shinyjs")


ui <- fluidPage(
  checkboxGroupInput("chk",
                     label = h3("체크박스그룹"),
                     choices = list("선택1" =1,
                                    "선택2" =2,
                                    "선택3" =3
                                    ),
                     selected = 1
                     ),
  hr(),
  fluidRow(column(3, verbatimTextOutput("value")))
)

server <- function(input, output, session) {
  output$value <- renderText({input$chk})
}

shinyApp(ui, server)
