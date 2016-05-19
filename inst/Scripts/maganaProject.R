#' script to run my functions
source("R/genMoves.R");
source("R/plotMoves.R");
moves <- genMoves();
plotMoves(moves);
