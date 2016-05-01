# ui.R

suppressPackageStartupMessages(c(
  library(shinythemes),
  library(shiny),
  library(tm),
  library(stringr),
  library(markdown),
  library(stylo)))

shinyUI(navbarPage(h4("Coursera: Data Science Capstone Project"),
                   
                   theme = shinytheme("cosmo"),
                   
                   ############################### ~~~~~~~~1~~~~~~~~ ##############################  
                   ## Tab 1 - Prediction
                   
                   tabPanel("Next Word Predictor",
                            
                            fluidRow(
                              
                              column(3),
                              column(6,
                                     tags$div(textInput("input_str", 
                                                        label = h4("Enter your text below followed by SPACEBAR:"),
                                                        value = ),
                                              tags$span(style="color:grey",("Bad words are censored with *")),
                                              br(),
                                              tags$hr(),
                                              h4("The predicted next word:"),
                                              tags$span(style="color:darkred",
                                                        tags$strong(tags$h3(textOutput("text2")))),
                                              br(),
                                              tags$hr(),
                                              h4("TEXT you have entered [with suggested word completion]:"),
                                              tags$em(tags$h4(textOutput("text1"))),
                                              align="center")
                              ),
                              column(3)
                            )
                   ),
                   
                   ############################### ~~~~~~~~2~~~~~~~~ ##############################
                   ## Tab 2 - About 
                   
                   tabPanel("About",
                            fluidRow(
                              column(2,
                                     p("")),
                              column(8,
                                     includeMarkdown("./about/about.md")),
                              column(2,
                                     p(""))
                            )
                   ),
                   
                   ############################### ~~~~~~~~F~~~~~~~~ ##############################
                   
                   ## Footer
                   
                   tags$hr(),
                   
                   tags$br(),
                   
                   tags$span(style="color:grey", 
                             tags$footer(("© 2016 - "), 
                                         tags$a(
                                           
                                           href="https://www.linkedin.com/in/eGyaan",
                                           target="_blank",
                                           "Gyaan GM."), 
                                         tags$br(),
                                         ("Built using"), tags$a(
                                           href="http://www.r-project.org/",
                                           target="_blank",
                                           "R"),
                                         ("&"), tags$a(
                                           href="http://shiny.rstudio.com",
                                           target="_blank",
                                           "Shiny."),
                                        
                                         align = "center"),
                             
                             tags$br()
                   )
)
)
