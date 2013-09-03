
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
log <- tamet(filename = fpath,MaxT_column = "maxave",
             MinT_column = "minave",
             Vprph09_column = "vprph09",
             Vprph15_column = "vprph15"
             )
log
head(read_file(log[[2]]))
#undebug(tamet)
