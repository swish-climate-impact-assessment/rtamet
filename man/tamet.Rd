\name{tamet}
  \alias{tamet}
  %- Also NEED an '\alias' for EACH other topic documented here.
  \title{tamet
  %%  ~~function to do ... ~~
  }
  \description{This is the main function to run the TAMET tests.
  
  }
  \usage{
  tamet(filename, MaxT_column = NA, MaxT_lower = 4.0, MaxT_upper = 50.0, 
      MinT_column = NA) 
  }
  %- maybe also 'usage' for other objects documented here.
  \arguments{
    \item{filename}{
      either a path or file in current directory (log will be written to a CSV with same name alongside this file). 
  %%     ~~Describe \code{x} here~~
  }
      \item{MaxT_column}{
       text string with name of relevant column
  }
  }
  \details{
  %%  ~~ If necessary, more details than the description above ~~
  }
  \value{
    The log will be written alongside the original file.
Invisibly returns a list with number of rows in logfile and path to that file.

  %%  ~Describe the value returned
  %%  If it is a LIST, use
  %%  \item{comp1 }{Description of 'comp1'}
  %%  \item{comp2 }{Description of 'comp2'}
  %% ...
  }
  \references{
  %% ~put references to the literature/web site here ~
  }
  \author{
  ivanhanigan ported original by apsim
  }
  \note{
  %%  ~~further notes~~
  }
  
  %% ~Make other sections like Warning with \section{Warning }{....} ~
  
  \seealso{
  %% ~~objects to See Also as \code{\link{help}}, ~~~
  }
  \examples{
  require(rtamet)
  fpath <- system.file("extdata", "Kaleen.csv", package="rtamet")
  df  <- read_file(fpath)
  logfile <- tamet(filename = fpath,MaxT_column = "maxave",MaxT_lower=4.0, MaxT_upper=40.0,
                   MinT_column = "minave")
  read_file(logfile[[2]])
  
  }
  % Add one or more standard keywords, see file 'KEYWORDS' in the
  % R documentation directory.
  \keyword{ ~kwd1 }
  \keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
