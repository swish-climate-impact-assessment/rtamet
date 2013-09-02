
################################################################
# name:tamet
require(rtamet)
tamet  <- function(filename,
                    MaxT_column = NA
                   ,
                   MaxT_lower = 4.0
                   ,
                   MaxT_upper = 40
                   ,
                    MinT_column = NA)
  {
    #### TODO Check Input File ####
    input_df  <- read_file(filename)
    #### Run Temperature Checks ####
#   Discontinuity_in_minT
#   Discontinuity_in_maxT
    input_df  <- MaxT_outside_limits(input_data_frame = input_df,
                                     MaxT = MaxT_column,
                                     Upper = MaxT_upper,
                                     Lower = MaxT_lower
                                     )
#   MinT_outside_limits
#   MaxT_greater_or_equal_MinT
#   MaxT_is_close_to_MinT_and_not_ overcast

    #### write report ####
    input_df  <- input_df$any_transgressions  <- ifelse(
      rowSums(
      input_df[,grep("transgression$", names(input_df))]
      ) > 0, 1, 0
      ) 
    write.csv(input_df, file.path())
  }
