
################################################################
# name:tamet
require(rtamet)
# or
#require(devtools)
#load_all()
fpath <- system.file("extdata", "Kaleen.csv", package="rtamet")
fpath
df  <- read_file(fpath)
str(df)
#debug(tamet)
tamet(filename = fpath,MaxT_column = "maxave")
#undebug(tamet)
