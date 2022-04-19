\name{generateSudoku}
\alias{generateSudoku}
\title{Randomly Generate a Sudoku Puzzle Grid}
\description{Creates a 9x9 Sudoku grid suitable for use by
   \code{\link{playSudoku}}.}
\usage{
  generateSudoku(Nblank=50, print.it=FALSE)
}
\arguments{
  \item{Nblank}{Number of cells to blank out}
  \item{print.it}{Logical.  If true, print result to screen.}
}
\details{
  The basic algorithm is to start with a 'primordial' Sudoku grid, swap
  around some rows and columns, then blank out some cells.
}
\value{A matrix, representing a 9x9 Sudoku grid.}
\references{\url{https://sudoku.com/}}
\author{Curt Seeliger <\email{Seeliger.Curt@epamail.epa.gov}>,
        Henrik Bengtsson <\email{hb@maths.lth.se}>,
    and David Brahm <\email{brahm@alum.mit.edu}>}
\examples{
generateSudoku(print.it=TRUE)
}
\keyword{array}
