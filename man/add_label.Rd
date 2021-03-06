% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/post_wrappers.R
\name{add_label}
\alias{add_label}
\title{Add label}
\usage{
add_label(card, color, name = NULL, ...)
}
\arguments{
\item{card}{Card id}

\item{color}{Label color}

\item{name}{Label name; choosing different non-existing name will create new label (defaults to \code{NULL})}

\item{...}{Additional arguments passed to \code{\link{post_model}}}
}
\description{
POST label to a card.
}
