
################################################################
# name:tamet
require(rtamet)
fpath <- system.file("extdata", "Kaleen.csv", package="rtamet")
df  <- read_file(fpath)
str(df)
debug(tamet)
out <- tamet(
filename = fpath

MaxT_column = "maxave"
)
