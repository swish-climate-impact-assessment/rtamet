
################################################################
# name:MaxT_outside_limits
MaxT_outside_limits <- function(input_data_frame,
                                MaxT = MaxT_column,
                                Lower = 4.0,
                                Upper = 50.0)
  {
    # perform check
    input_data_frame$MaxT_lower_transgression  <- ifelse(input_data_frame[,MaxT] < Lower, 1, 0)
    input_data_frame$MaxT_upper_transgression  <- ifelse(input_data_frame[,MaxT] > Upper, 1, 0)

    return(input_data_frame)
  }
