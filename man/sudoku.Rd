\name{sudoku}
\alias{sudoku}
\title{Solve a Sudoku Puzzle}
\description{Reads a file containing a Sudoku puzzle, and solves it.}
\usage{
  sudoku(z, verbose=FALSE, map=c(1:9,letters), level=0, dir=".")
}
\arguments{
  \item{z}{A filename (in the directory 'dir').  Or, a numeric matrix
    (this capability is mainly used for recursion).}
  \item{verbose}{If TRUE, report on progress.}
  \item{map}{Vector of unique puzzle elements (possibly longer than
    necessary).  The default is \code{c(1:9, letters)}, so an N=16 puzzle
    should be encoded using '1'-'9' and 'a'-'g'.}
  \item{level}{Recursion level (should not be set by user).}
  \item{dir}{Directory where the file lives.}
}
\details{
A Sudoku puzzle consists of an NxN grid, where N is a perfect square
(usually N=9).  The grid is subdivided into N [sqrt(N) x sqrt(N)]
boxes.  You must fill in the missing values so that each row, each
column, and each box contains the integers 1:N exactly once.

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
}
\references{Example "puz1" comes from \url{http://sudoku.com/}.}
\note{This package does not contain a puzzle generator, though that
  would be a nice thing to have.}
\author{David E. Brahm <\email{brahm@alum.mit.edu}>}
\examples{
\dontrun{
  sudoku("puz1.txt", verbose=TRUE, dir=system.file(package="sudoku"))
}
}
\keyword{array}
