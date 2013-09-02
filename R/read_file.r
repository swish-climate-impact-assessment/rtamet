
################################################################
# name:read_file

read_file <- function(inputfilepath, header=TRUE, sanitise_names = TRUE)
{

  ext <- get_file_extension(inputfilepath)
  # print(ext)

  if (ext=="dbf")
  {
    data_frame<-read.dbf(inputfilepath,as.is=TRUE)
  } else if (ext == "dta") {
    data_frame <- read.dta(inputfilepath)
  } else if (ext=="csv" || ext=="txt") {
    csvfilename<-inputfilepath
    data_frame<-read.csv(csvfilename,stringsAsFactors=FALSE,header=header,
                         strip.white=TRUE)
  } else print("Unknown extension")

  if(sanitise_names)
    {
      names(data_frame)<-gsub("\\.","_",names(data_frame))
      names(data_frame)<-gsub("_+","_",names(data_frame))
    }

  return(data_frame)
}
