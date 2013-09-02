
################################################################
# name:tamet
require(rtamet)
tamet  <- function(filename, MaxT_column = NA,
                   MaxT_lower = 4.0,
                   MaxT_upper = 50.0,
                   MinT_column = NA,
                   MinT_lower = -12.5,
                   MinT_upper = 32.0
                   )
  {
    #### TODO Check Input File, especially column names and latitude  ####
    input_df  <- read_file(filename)
    #### Run Temperature Checks ####
#   Discontinuity_in_minT
#   Discontinuity_in_maxT
#   MaxT_outside_limits
    input_df  <- MaxT_outside_limits(input_data_frame = input_df,
                                     MaxT = MaxT_column,
                                     Upper = MaxT_upper,
                                     Lower = MaxT_lower
                                     )
#   MinT_outside_limits
    input_df  <- MinT_outside_limits(input_data_frame = input_df,
                                     MinT = MinT_column,
                                     Upper = MinT_upper,
                                     Lower = MinT_lower
                                     )
#   MaxT_greater_or_equal_MinT
#   MaxT_is_close_to_MinT_and_not_ overcast

    #### write report ####
    input_df$any_transgressions  <- ifelse(
      rowSums(
      input_df[,grep("transgression$", names(input_df))]
      ) > 0, 1, 0
      )
    input_df  <- subset(input_df, any_transgressions > 0)
    extension  <- get_file_extension(fpath)
    logname  <- gsub(extension, "qc_transgressions_logged.csv",  fpath)
    write.csv(input_df, logname, row.names=FALSE)
    cat(sprintf("%s Transgressions logged and written to:\n%s", nrow(input_df), logname))
    log <- list()
    log[[1]] <- nrow(input_df)
    log[[2]] <- logname
    invisible(log)
  }
