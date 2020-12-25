ui <- fluidPage(
  
  titlePanel("Argos: Metadata Inspection "),
  
  hr(),
  
  DT::dataTableOutput("contents"),
  hr(),
  
  
  fluidRow(
    column(3,
           fileInput("file1", "Choose TSV File",
                     multiple = FALSE,
                     accept = c("text/tsv",
                                "text/tab-separated-values,text/plain",
                                ".tsv",
                                ".xls"))
    ),
    
    column(4,
           radioButtons("select1", label = h3("Select Group"), 
                        choices = list("Experiment Info" = 1, "STAR" = 2, "VERSE" = 3,
                                       "BLAST" = 4, "Trim" = 5, "Experiment Metadata" = 6),
                        selected = 1)
    ), 
    
    column(4,
           checkboxGroupInput("select2", label = h3("Select Sub-group"), 
                              choices = list("Experiment Info" = 1, "STAR" = 2, "VERSE" = 3,
                                             "BLAST" = 4, "Trim" = 5, "Experiment Metadata" = 6),
                              selected = 1)
    )
    
  )
  
)