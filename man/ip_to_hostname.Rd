% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ip_to_hostname.R
\name{ip_to_hostname}
\alias{ip_to_hostname}
\alias{ip_to_hostname_all}
\alias{hostname_to_ip}
\alias{hostname_to_ip_all}
\title{Translate address to/from hostname}
\usage{
ip_to_hostname(x)

ip_to_hostname_all(x)

hostname_to_ip(x)

hostname_to_ip_all(x)
}
\arguments{
\item{x}{\itemize{
\item \code{ip_to_hostname()}: An \code{\link{ip_address}} vector
\item \code{hostname_to_ip()}: A character vector of hostnames
}}
}
\value{
\itemize{
\item \code{ip_to_hostname()}: A character vector
\item \code{ip_to_hostname_all()}: A list of character vectors
\item \code{hostname_to_ip()}: An \code{\link{ip_address}} vector
\item \code{hostname_to_ip_all()}: A list of \code{\link{ip_address}} vectors
}
}
\description{
Perform reverse and forward DNS resolution.

\strong{Note:} These functions are significantly slower than others in the
ipaddress package.
}
\details{
These functions require an internet connection. Before processing the input
vector, we first check that a known hostname can be resolved. If this fails,
an error is raised.

If DNS lookup cannot resolve an input, then \code{NA} is returned for that input.
If an error occurs during DNS lookup, then a warning is emitted and \code{NA} is
returned for that input.

DNS resolution performs a many-to-many mapping between IP addresses and
hostnames. For this reason, there are two versions of each function. The
regular version returns just the first value and the \verb{_all()} suffix version
returns all values.
}
\examples{
\dontrun{
hostname_to_ip("r-project.org")

ip_to_hostname(hostname_to_ip("r-project.org"))
}
}
\seealso{
The base function \code{nsl()} provides forward DNS resolution to IPv4 addresses,
but only on Unix-like systems.
}
