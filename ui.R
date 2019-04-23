# Coursera Data Science Capstone Final Project
#ui.R app for the NextWordPrediction App
# Created by Corinne Helman
# April 16, 2019

suppressWarnings(library(shiny))
suppressWarnings(library(markdown))

shinyUI(
  fluidPage(
    titlePanel("Next Word Prediction: Final Data Science Project"),
    tabPanel("Predict the Next Word",
             HTML("<strong>Author: Corinne Helman</strong>"),
             br(),
             HTML("<strong>Date: 04/08/2019</strong>"),
             br(),
             img(src = "./headers.png")
    ),
    sidebarLayout(
      sidebarPanel(
        helpText("Enter a sequence of words"),
        hr(),
        textInput("inputText", "Enter a sequence of words",value = ""),
        hr(),
        hr(),
        hr()
      ),
      mainPanel(
        h2("Predicted next words"),
        verbatimTextOutput("prediction"),
        strong("Sentence Entered:"),
        strong(code(textOutput('sentence1'))),
        setBackgroundColor(
          color = c("#F7FBFF", "#2171B5"),
          gradient = "linear",
          direction = "bottom"
        ),
        hr(),
        strong("Using N-gram to return next word:"),
        strong(code(textOutput('sentence2')))
       
             )
               )
    ,
    tabPanel("About",
             mainPanel(
               img(src = "./headers.png"),
               includeMarkdown("about.md")
             )
    ) )
  
)  

