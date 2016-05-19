#' two-dimensional Brownian motion
#'
#' simulate two-dimensional Brownian motion
#'
#' @param N number of moves
#' @param sigma SD of moves
#'
#' @export
#' @importFrom stats rnorm
#' @examples
#' moves <- genMoves()
#' plotMoves(moves)
genMoves <-
    function(N = 1000, sigma = .1)
{
    # uncomment to set values for testing
    # N = 1000;
      # sigma = .1;

    # generate N values with mean of 0 and standard deviation of 1
    moves_x = rnorm(N, 0, 1);
    moves_y = rnorm(N, 0, 1);

    # generate N values with mean of 0 and standard deviation of sigma^2
    epsilon_x = rnorm(N, 0, sigma*sigma);
    epsilon_y = rnorm(N, 0, sigma*sigma);

    # added epsilon value to the first entry
    moves_x[1] = moves_x[1] + epsilon_x[1];
    moves_y[1] = moves_y[1] + epsilon_y[1];


    # update moves vector to be moves[i-1]*epsilon[i]
    for (i in 2:N) {
            moves_x[i]=moves_x[i-1]+epsilon_x[i];
        moves_y[i]=moves_y[i-1]+epsilon_y[i];
    }

    # combine two vectors into array for output
    rbind(moves_x, moves_y);
}
