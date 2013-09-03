
################################################################
# name:vprph09_equal_vprph15
vprph09_equal_vprph15 <- function(input_data_frame,
                                Vprph09 = "vprph09",
                                Vprph15 = "vprph15")
  {
    # perform check
    input_data_frame$vprph_equal_transgression  <- ifelse(input_data_frame[,Vprph09] == input_data_frame[,Vprph15], 1, 0)

    return(input_data_frame)
  }
