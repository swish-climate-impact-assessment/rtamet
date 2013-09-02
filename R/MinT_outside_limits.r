
################################################################
# name:MinT_outside_limits
MinT_outside_limits <- function(input_data_frame,
                                MinT = MinT_column,
                                Upper = 50.0)
  {
    # perform check
    input_data_frame$MinT_upper_limit_transgression  <- ifelse(input_data_frame[,MinT] > Upper, 1, 0)

    return(input_data_frame)
  }
