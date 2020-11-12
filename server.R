library(shiny)

shinyServer(function(input, output, session) {
        output$Time <- reactive({pred()})
        pred<- reactive({
                round((8621*input$He)/((input$U/1000)+0.25*(input$Th/1000)), digits = 2)})
        
        observe({
                
                updateSliderInput(
                        session = session,
                        inputId = "He",
                        value = input$Hen
                )
        })
        
        observe({
                
                updateSliderInput(
                        session = session,
                        inputId = "Hen",
                        value = input$He
                )
        })
        observe({
                
                updateSliderInput(
                        session = session,
                        inputId = "Th",
                        value = input$Thn
                )
        })
        
        observe({
                
                updateSliderInput(
                        session = session,
                        inputId = "Thn",
                        value = input$Th
                )
        })
        observe({
                
                updateSliderInput(
                        session = session,
                        inputId = "U",
                        value = input$Un
                )
        })
        
        observe({
                
                updateSliderInput(
                        session = session,
                        inputId = "Un",
                        value = input$U
                )
        })
}
)