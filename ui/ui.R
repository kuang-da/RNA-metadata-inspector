source("config.R")

ui <- dashboardPage(
  
  dashboardHeader(title = "Argos"),
  
  dashboardSidebar(
    fileInput("file1", label = h3("Choose TSV File"),
              multiple = FALSE,
              accept = ACCEPT_FILE_TYPES),
    
    radioButtons("select1", label = h3("Select Analysis"), 
                 choices = L1_SELECT_LIST,
                 selected = 1),
    radioButtons("select2", label = h3("Select Information"),
                 choices = list(),
                 selected = 1),
    checkboxGroupInput("select3", label = h3("Mulit-Select Columns"),
                 choices = list(),
                 selected = 1)
  ),
  
  dashboardBody(
    fluidRow(
      box(
        width = 12,
        height = 800,
        DT::dataTableOutput("contents"),
        style = "overflow-y: scroll; overflow-x: scroll;"
      )
    )
  )
  
)
