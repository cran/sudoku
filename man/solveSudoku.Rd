\name{solveSudoku}
\alias{solveSudoku}
\title{Solve a Sudoku Puzzle}
\description{Solves a Sudoku Puzzle.}
\usage{
  solveSudoku(z, verbose=FALSE, map=c(1:9,letters), level=0,
              print.it=TRUE)
}
\arguments{
  \item{z}{A filename (passed to \code{\link{readSudoku}}), or a numeric
           matrix.}
  \item{verbose}{If TRUE, report on progress.}
  \item{map}{Vector of unique puzzle elements (possibly longer than
    necessary).  The default is \code{c(1:9, letters)}, so an N=16 puzzle
    should be encoded using '1'-'9' and 'a'-'g'.}
  \item{level}{Recursion level (should not be set by user).}
  \item{print.it}{Logical: print the solution?}
}
\details{
A Sudoku puzzle consists of an NxN grid, where N is a perfect square
(usually N=9).  The grid is subdivided into N [sqrt(N) x sqrt(N)]
boxes.  You must fill in the missing values so that each row, each
column, and each box contains the integers 1:N exactly once.

The algorithm uses an NxNxN array of logicals, representing the NxN
cells and the N possible elements.  For example, if a[1,2,3]=TRUE, then
z[1,2] is known to be '3'.  If a[1,2,4]=FALSE, then z[1,2] is known not
to be '4'.  The basic rules of Sudoku are used to fill in FALSE's, then
elimination is used to find the TRUE's.  If that approach runs out of
steam, a guess is made and the program recurses to find either a
solution or an inconsistency.  No attempt is made to prove a solution's
uniqueness.
}
\value{Invisibly returns the solved (numerical) matrix, and prints the
  character version.}
\references{Example "puz1" comes from \url{http://sudoku.com/}.}
\author{David E. Brahm <\email{brahm@alum.mit.edu}>}
\examples{
\dontrun{
  solveSudoku(system.file("puz1.txt",package="sudoku"), verbose=TRUE)
}
}
\keyword{array}
