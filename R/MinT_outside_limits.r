
################################################################
# name:MinT_outside_limits
MinT_outside_limits <- function(input_data_frame,
                                MinT = "mint",
                                Lower = -12.5,
                                Upper = 32.0)
  {
    # perform check
    input_data_frame$MinT_lower_transgression  <- ifelse(input_data_frame[,MinT] < Lower, 1, 0)
    input_data_frame$MinT_upper_transgression  <- ifelse(input_data_frame[,MinT] > Upper, 1, 0)

    return(input_data_frame)
  }
