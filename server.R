# server.R

library(shiny)
source("helpers.R")

shinyServer(
    function(input, output) {
        output$text1 <- renderText({
            paste(filter_text(get_word(input$input_str)))
        })
        output$text2 <- renderText({
            paste(filter_text(get_pred(input$input_str)))
        })
    }
)