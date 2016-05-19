#' two-dimensional Brownian motion plot
#'
#' Plot two-dimensional Brownian motion
#'
#' @param moves array of moves
#'
#' @export
#' @importFrom graphics plot
#'
#' @examples
#' moves <- genMoves()
#' plotMoves(moves)
plotMoves <-
    function(moves)
{
    # plot the vector, this will eventually be done in a second function
    plot(moves[1,], moves[2,], type="l",  main= "Brownian Motion in Two Dimensions", xlab="X", ylab="Y");
}
