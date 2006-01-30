\name{fetchSudokuUK}
\alias{fetchSudokuUK}
\title{Fetch the daily sudoku puzzle from http://www.sudoku.org.uk/}
\description{Fetches the daily sudoku puzzle from
  http://www.sudoku.org.uk/ or one of their archive from the previous 31
  days.}
\usage{
  fetchSudokuUK(day)
}
\arguments{
  \item{day}{Optional character string specifying the day of the puzzle
    to download.  This is in European date format 'dd/mm/yyyy' and needs
    to represent a date within the last 31 days.}
}
\value{
  A 9x9 matrix representing a sudoku puzzle (blank squares have value
  0).
}
\references{\url{http://www.sudoku.org.uk/}}
\author{Greg Snow \email{greg.snow@intermountainmail.org}}
\note{See the website for copyright information.  Don't submit your
  solution for the prize contest if you used \code{solveSudoku} or
  \code{playSudoku} with \code{solve=TRUE}.  This function requires a
  working internet connection.}
\seealso{\code{\link{solveSudoku}}, \code{\link{playSudoku}},
  \code{\link{generateSudoku}} }
\examples{
\dontrun{

#todays puzzle
puz <- fetchSudokuUK()

# puzzle from 25 Jan 2006 (if still available)
puza <- fetchSudokuUK('25/01/2006')

playSudoku(puza)
}
}
\keyword{misc}
