\name{set_header}
\alias{set_header}
\title{Set the header information}
\usage{
set_header(...)
}
\arguments{
  \item{...}{the header components; currently possible
  components are \code{highlight}, \code{tikz} and
  \code{framed}, which contain the necessary commands to be
  used in the HTML header or LaTeX preamble; note HTML
  output does not use the \code{tikz} and \code{framed}
  components (they do not make sense to HTML)}
}
\value{
  The header vector in \code{opts_knit} is set.
}
\description{
  Some output documents may need appropriate header
  information. For example, for LaTeX output, we need to
  write \samp{\\usepackage{tikz}} into the preamble if we
  use tikz graphics; this function sets the header
  information to be written into the output.
}
\details{
  By default, \pkg{knitr} will set up the header
  automatically. For example, if the tikz device is used,
  \pkg{knitr} will add \samp{\\usepackage{tikz}} to the
  LaTeX preamble, and this is done by setting the header
  component \code{tikz} to be a character string:
  \code{set_header(tikz = '\\usepackage{tikz}')}. Similary,
  when we highlight R code using the \pkg{highlight}
  package (i.e. the chunk option \code{highlight = TRUE}),
  \pkg{knitr} will set the \code{highlight} component of
  the header vector automatically; if the output type is
  HTML, this component will be different -- instead of
  LaTeX commands, it contains CSS definitions.

  For power users, all the components can be modified to
  adapt to a customized type of output. For instance, we
  can change \code{highlight} to LaTeX definitions of the
  \pkg{listings} package (and modify the output hooks
  accordingly), so we can decorate R code using the
  \pkg{listings} package.
}
\examples{
set_header(tikz = "\\\\usepackage{tikz}")
opts_knit$get("header")
}
