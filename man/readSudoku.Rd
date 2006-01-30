\name{readSudoku}
\alias{readSudoku}
\title{Read a File Containing a Sudoku Grid}
\description{Reads a file containing a Sudoku grid (a 9x9 matrix).}
\usage{
  readSudoku(fn, map)
}
\arguments{
  \item{fn}{A filename.}
  \item{map}{Vector of unique puzzle elements (possibly longer than
    necessary).  The default is \code{c(1:9, letters)}, so an N=16 puzzle
    should be encoded using '1'-'9' and 'a'-'g'.}
}
\details{
The input file should look like this:
\preformatted{
-6-1-4-5-
--83-56--
2-------1
8--4-7--6
--6---3--
7--9-1--4
5-------2
--72-69--
-4-5-8-7-
}
Blank cells can be indicated with any character not in "map", such as
the '-' used here.
}
\value{A numeric matrix (usually 9x9).}
\author{David E. Brahm <\email{brahm@alum.mit.edu}>}
\examples{
  z <- readSudoku(system.file("puz1.txt", package="sudoku"))
}
\keyword{array}
