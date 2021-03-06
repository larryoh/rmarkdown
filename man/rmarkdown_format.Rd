% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/output_format.R, R/util.R
\name{rmarkdown_format}
\alias{rmarkdown_format}
\alias{from_rmarkdown}
\title{R Markdown input format definition}
\usage{
rmarkdown_format(extensions = NULL)

from_rmarkdown(implicit_figures = TRUE, extensions = NULL)
}
\arguments{
\item{extensions}{Markdown extensions to be added or removed from the
default definition of R Markdown.}

\item{implicit_figures}{Automatically make figures from images (defaults to \code{TRUE}).}
}
\value{
Pandoc markdown format specification
}
\description{
Compose a pandoc markdown input definition for R Markdown
that can be passed as the \code{from} argument of \link{pandoc_options}.
}
\details{
By default R Markdown is defined as all pandoc markdown extensions with
the following tweaks for backward compatibility with the markdown package
(+ features are added, - features are removed):

\tabular{l}{
\code{+autolink_bare_uris} \cr
\code{+tex_math_single_backslash} \cr
}

For more on pandoc markdown see the
\href{http://pandoc.org/README.html}{pandoc online documentation}.
}
\examples{
\dontrun{
rmarkdown_format("-implicit_figures")
}
}
\seealso{
\link{output_format}, \link{pandoc_options}
}
