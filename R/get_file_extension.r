
################################################################
# name:get_file_extension
get_file_extension <- function(inputfilepath)
{
    filename <- basename(inputfilepath)
    filename_split <- strsplit(filename, "\\.")[[1]]
    ext <- filename_split[length(filename_split)]
    return(ext)
}
