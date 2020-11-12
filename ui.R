library(shiny)
library(shinyWidgets)

shinyUI(
  navbarPage("𝔾𝕖𝕠𝕔𝕙𝕣𝕠𝕟",
             tabPanel("Calculation",
                      div(style="width:3000px;padding-left:25px; ", fluidPage( # set the width and space (padding) of the sideBar panel
                        tags$head(tags$style("body {overflow-x: hidden;}")), # prevents horizontal(x) scrolling
                        tags$head(tags$style(HTML("input[type=\"number\"] {width:200px}"))), # set label and numericInput side by side
                        tags$head(tags$style(HTML("#Time {font-size:36px;}"))),       # adjust font size of the output
                        tags$head(tags$style('h4 {color:black; font:14pt "Arial"}')), # adjust font size of h4
                        tags$head(tags$style('h3 {color:black; font:14pt "Arial"}')), # adjust font size of h3
                        tags$head(tags$style('h2 {color:black; font:14pt "Arial"}')), # adjust font size of h2
                        tags$head(tags$style('p {color:black;}')),                    # adjust font size of p (paragraph)
                        tags$head(tags$style('a {color:black;font:12pt "Arial"}')),   # adjust font size of a (hyperlink)
                        setBackgroundImage(
                          src = "https://raw.githubusercontent.com/EvertonSulato/Shiny_Application_and_Reproducible_Pitch/master/Backgroun_Image_1600x952.jpg"
                        ),
                        titlePanel("Select the input variables from your U-Th/He analysis on the sliders below:"),
                        sidebarLayout(
                          sidebarPanel(
                            fluidRow(
                              column(2, HTML('<b>"He (mm³):"</b>')),
                              column(2.5, numericInput("Hen", label = NULL, value = 0, step=0.01)),
                              sliderInput("He",
                                          NULL,
                                          min = 0,
                                          max = 100,
                                          value = 0,
                                          step=0.01)),
                            fluidRow(
                              column(2, HTML('<b>"U (mg):"</b>')),
                              column(2.5, numericInput("Un",label = NULL,value = 0, step=0.01)),
                              sliderInput("U",
                                          NULL,
                                          min = 0,
                                          max = 1000,
                                          value = 0,
                                          step=0.01)),
                            fluidRow(
                              column(2, HTML('<b>"Th (mg):"</b>')),
                              column(2.5, numericInput("Thn", label = NULL, value = 0, step=0.01)),
                              sliderInput("Th",
                                          NULL,
                                          min = 0,
                                          max = 1000,
                                          value = 0,
                                          step=0.01)),
                            ),
                          
         mainPanel(
            div(style="width:300px;padding-left:50px; ", fluidRow(h4("Time (years):", align="center"), verbatimTextOutput("Time", placeholder = T)))
             )
            )
          )
        )
      ),
      tabPanel("About the App",
               h3("𝔾𝕖𝕠𝕔𝕙𝕣𝕠𝕟"),
               p("This application was developed to calculate the age (in years) of geological samples from the concentration of Uranium (U), Thorium (Th) and Helium (He).", tags$br(),
                        "Therefore, the values of the concentrations of U (mg), Th (mg), and He (mm³) must be selected using the sliderbar or inserting the numerical value.",
                        "The resulting calculated age is returned on the “Time (years)” display."),
               hr(),
               p("This app was created as a project during the Data Product course from Coursera.")
               ),
      tabPanel("Source", 
               h3("Isotopic Age"),
               p("Geochronological methods make it possible to obtain a direct or indirect isotopic age.",
                        "The determination of Uranium and Helium in samples was developed by Strutt in 1908.",
                        "Alpha particles are produced during the spontaneous desintegration of the ²³⁸U, ²³⁵U, and ²³²Th series radionuclides.",
                        "After capturing 2 electrons, these particles (alpha + 2e) form the Helium gas, which can accumulate over time.",
                        "The age (years) of a given subject can be calculated from the expression described by TORQUATO & KAWASHITA (1990):", tags$br(),
                        "", tags$br(),
                        "t = 8621 * He (mm³) / U (mg) /1000 + 0.25 * Th (mg)/1000", tags$br(),
                        "", tags$br(),
                        "Note that, herein, the equation was adapted to take mg as input, instead of g, as in the original expression.", tags$br(),
                        "", tags$br(),
                        "Therefore, the 𝔾𝕖𝕠𝕔𝕙𝕣𝕠𝕟 application allows for a quick obtaining of the age from the concentrations of U-Th/He using the expression above."),
               hr(),
               h3("Reference"),
               p("Torquato, J. R.; Kawashita, K. (1990) Radioatividade e Princípios Físicos da Geocronologia. Revista de Geologia, vol. 3 : 101 a 121."),
               
               ),
      
      tabPanel("Github Repository", 
               h4("I hope you enjoyed 𝔾𝕖𝕠𝕔𝕙𝕣𝕠𝕟 App!"),
               p("For more detais and the ui and server files used to build this app by Shiny package, visit my Github repository."),
               hr(),
               a("https://github.com/EvertonSulato/Shiny_Application_and_Reproducible_Pitch"),
               hr(),
               p("Everton Sulato")
               )
            )
        )