\name{hintSudoku}
\alias{hintSudoku}
\title{Give a Hint for a Sudoku Cell}
\description{Generates a text string containing a 'hint' for cell (i,j)
  of Sudoku grid 'z'.}
\usage{
  hintSudoku(z, i, j)
}
\arguments{
  \item{z}{A 9x9 numeric matrix}
  \item{i}{Row index}
  \item{j}{Column index}
}
\value{A character string, suitable for \code{cat}.}
\author{Greg Snow \email{greg.snow@intermountainmail.org}
    and David E. Brahm <\email{brahm@alum.mit.edu}>}
\keyword{array}
