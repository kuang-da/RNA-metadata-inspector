server <- function(input, output) {
  
  output$contents = DT::renderDataTable({
    req(input$file1)
    
    df <- read.csv(input$file1$datapath, sep="\t")
  })
  
  
}