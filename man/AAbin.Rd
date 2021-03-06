\name{AAbin}
\alias{AAbin}
\alias{print.AAbin}
\alias{[.AAbin}
\alias{as.character.AAbin}
\alias{labels.AAbin}
\alias{image.AAbin}
\alias{as.AAbin}
\alias{as.AAbin.character}
\alias{as.phyDat.AAbin}
\alias{dist.aa}
\alias{AAsubst}
\title{Amino Acid Sequences}
\description{
  These functions help to create and manipulate AA sequences.
}
\usage{
\method{print}{AAbin}(x, \dots)

\method{[}{AAbin}(x, i, j, drop = FALSE)

\method{as.character}{AAbin}(x, \dots)

\method{labels}{AAbin}(object, \dots)

\method{image}{AAbin}(x, what, col, bg = "white", xlab = "", ylab = "",
      show.labels = TRUE, cex.lab = 1, legend = TRUE, \dots)

as.AAbin(x, \dots)
\method{as.AAbin}{character}(x, \dots)

\method{as.phyDat}{AAbin}(x, \dots)

dist.aa(x, pairwise.deletion = FALSE, scaled = FALSE)
AAsubst(x)
}
\arguments{
\item{x, object}{an object of class \code{"AAbin"}.}
\item{i, j}{indices of the rows and/or columns to select or to
drop. They may be numeric, logical, or character (in the same way than
for standard \R objects).}
\item{drop}{logical; if \code{TRUE}, the returned object is of the
lowest possible dimension.}
\item{what}{a vector of characters specifying the amino acids to
visualize. Currently, the only possible choice is to show the three
categories hydrophobic, small, and hydrophilic.}
\item{col}{a vector of colours. If missing, this is set to ``red'',
``yellow'' and ``blue''.}
\item{bg}{the colour used for AA codes not among \code{what} (typically
X and *).}
\item{xlab}{the label for the \emph{x}-axis; none by default.}
\item{ylab}{Idem for the \emph{y}-axis. Note that by default, the labels
of the sequences are printed on the \emph{y}-axis (see next option).}
\item{show.labels}{a logical controlling whether the sequence labels are
printed (\code{TRUE} by default).}
\item{cex.lab}{a single numeric controlling the size of the sequence
labels. Use \code{cex.axis} to control the size of the annotations on
the \emph{x}-axis.}
\item{legend}{a logical controlling whether the legend is plotted
(\code{TRUE} by default).}
\item{pairwise.deletion}{a logical indicating whether to delete the
sites with missing data in a pairwise way. The default is to delete the
sites with at least one missing data for all sequences.}
\item{scaled}{a logical value specifying whether to scale the number of
AA differences by the sequence length.}
\item{\dots}{further arguments to be passed to or from other methods.}
}
\details{
These functions help to manipulate amino acid sequences of class
\code{"AAbin"}. These objects are stored in vectors, matrices, or lists
which can be manipulated with the usual \code{[} operator.

There are conversion functions to and from characters, and to
\code{"phyDat"}.

The function \code{dist.aa} computes the number of AA differences
between each pair of sequences in a matrix; this can be scaled by the
sequence length. See the function \code{\link[phangorn]{dist.ml}} in
\pkg{phangorn} for evolutionary distances with AA sequences.

The function \code{AAsubst} returns the indices of the polymorphic sites
(similar to \code{\link{seg.sites}} for DNA sequences; see examples below).
}
\note{
Package \pkg{phangorn} has the function \code{read.aa} to read amino
acid sequence files in FASTA format.
}
\value{
an object of class \code{"AAbin"}, \code{"character"}, \code{"phyDat"},
\code{"dist"}, or \code{"numeric"}, depending on the function.
}
\author{Emmanuel Paradis}
\seealso{
\code{\link{trans}}, \code{\link{alview}}
}
\examples{
data(woodmouse)
AA <- trans(woodmouse, 2)
seg.sites(woodmouse)
AAsubst(AA)
}
\keyword{manip}
