\name{playSudoku}
\alias{playSudoku}
\title{Interactively play a game of Sudoku}
\description{Interactively play a game of 9x9 Sudoku with hints and undo}
\usage{
  playSudoku(z=NULL, hist.len=100, solve=TRUE,
              display=c("guess","windows","tk"),
              hscale=1.25, vscale=1.25, ...)
}
\arguments{
  \item{z}{Either a 9x9 numeric matrix representing the Sudoku grid
    (with '0' representing a blank cell), or 0 (zero) for an empty
    matrix, or a filename (passed to \code{\link{readSudoku}}), or NULL
    to generate a puzzle randomly.}
  \item{hist.len}{Integer representing the number of history steps to
    remember (number of undo's possible).}
  \item{solve}{Logical indicating if the solution should be computed
    (used for checking current answer or cheating).}
  \item{display}{Type of display.  The default 'guess' uses a windows
    graphics device if getOption('device')=='windows', otherwise it uses
    tk (requiring the 'tkrplot' package).}
  \item{hscale}{Passed to tkrplot}
  \item{vscale}{Passed to tkrplot}
  \item{...}{Arguments passed to \code{\link{generateSudoku}}}
}
\details{
  To play, move the mouse arrow over an empty cell and press the
  number key to enter the number in the cell.  Typing '?' brings up a
  menu of additional commands:
  \preformatted{
    ?     -- a short help message
    1-9   -- insert digit
    0,' ' -- clear cell
    r     -- replot the puzzle
    q     -- quit
    h     -- hint/help
    c     -- correct wrong entries (show in red)
    u     -- undo last entry
    s     -- show number in cell
    a     -- show all (solve the puzzle)
  }
}
\value{
  An invisible matrix with the solution or current state of the puzzle.
  Save this if you stop part way through, and use it as the input for
  the function to start again where you left off (undo info is lost so
  make sure that everything is correct).}
\author{Greg Snow \email{greg.snow@intermountainmail.org}
    and David E. Brahm <\email{brahm@alum.mit.edu}>}
\note{display='windows' makes use of the \code{getGraphicsEvent}
  function, which currently only works on Windows.}
\seealso{\code{\link{solveSudoku}}}
\examples{
\dontrun{
puz1 <- playSudoku(0)        # Use as an editor to create a puzzle, then quit
sol1 <- playSudoku(puz1)     # now play the puzzle

puz2 <- edit(matrix(0,9,9))  # Or use this editor
sol2 <- playSudoku(puz2)     # now play the puzzle

playSudoku()                 # Play a randomly generated game

playSudoku(fetchSudokuUK())  # Play today's game
}
}
\keyword{dynamic}
