% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ip_address.R, R/ip_interface.R, R/ip_network.R
\name{ip_cast}
\alias{ip_cast}
\alias{as_ip_address}
\alias{as_ip_interface}
\alias{as_ip_network}
\title{Cast to IP vector}
\usage{
as_ip_address(x)

as_ip_interface(x)

as_ip_network(x)
}
\arguments{
\item{x}{An object to cast}
}
\value{
\itemize{
\item \code{as_ip_address()}: An \code{\link{ip_address}} vector
\item \code{as_ip_network()}: An \code{\link{ip_network}} vector
\item \code{as_ip_interface()}: An \code{\link{ip_interface}} vector
}
}
\description{
Methods for converting character vectors and \code{\link{ip_interface}} vectors to
\code{\link{ip_address}} and \code{\link{ip_network}} vectors.
}
\examples{
as_ip_address(ip_interface("192.168.0.1/10"))

as_ip_network(ip_interface("192.168.0.1/10"))
}
