source("config.R")

server <- function(input, output, session) {
  select_col <- reactive({
    select_col <- c(1)
    
    if (input$select1 %in% c(1, 6)){
      select_col <- c(select_col, L1_COLUMN_LIST[[as.integer(input$select1)]])
    }else if (input$select1 %in% c(4)){
      select_col <- c(select_col, L2_COLUMN_LIST[[as.integer(input$select1)]][[as.integer(input$select2)]])
    }else if (is.null(input$select3)){
      select_col <- c(select_col, L2_COLUMN_LIST[[as.integer(input$select1)]][[as.integer(input$select2)]])
    }
    else {
      for (idx in seq(length(input$select3))){
        new_col <- L3_COLUMN_LIST[[as.integer(input$select1)]][[as.integer(input$select3[idx])]]
        select_col <- c(select_col, new_col)
      }
    }
    select_col
  })
  
  output$contents <- DT::renderDataTable({
    req(input$file1)
    
    df <- read.csv(input$file1$datapath, sep="\t", row.names=NULL)[, select_col()]
    
  })
  
  observe({
    print(paste0("input$select1: ", input$select1))
    print(paste0("class(input$select1):", class(input$select1)))
    print(paste0("input$select2: ", input$select2))
    print(paste0("----------------"))
    print("input$select3:")
    # if (!is.null(input$select3)){
    #   for (idx in seq(length(input$select3))){
    #     print(new_col <- L3_COLUMN_LIST[[as.integer(input$select1)]][[as.integer(input$select3[idx])]])
    #   }
    # }
  })
  
  observe({
    x <- input$select1
    if (length(unlist(L2_SELECT_LIST[as.integer(x)])) > 0){
      the_choice <- L2_SELECT_LIST[[as.integer(x)]]
    }else{
      the_choice <- list()
    }
    updateRadioButtons(session,
                       inputId = "select2",
                       choices = the_choice,
                       selected = 1)
  })
  
  observe({
    x <- as.integer(input$select1)
    y <- input$select2
    
    if (!is.null(y)){
      y <- as.integer(input$select2)
      # y = 1 is parameter
      if (length(unlist(L3_SELECT_LIST[x])) > 0 & y > 1){
        the_choice <- L3_SELECT_LIST[[x]]
      }else{
        the_choice <- list()
      }
      updateCheckboxGroupInput(session,
                               inputId = "select3",
                               choices = the_choice,
                               selected = 1)
    }
    
  })
  
}