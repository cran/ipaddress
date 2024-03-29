% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ipv6_transition.R
\name{ipv6-transition}
\alias{ipv6-transition}
\alias{is_ipv4_mapped}
\alias{is_6to4}
\alias{is_teredo}
\alias{extract_ipv4_mapped}
\alias{extract_6to4}
\alias{extract_teredo_server}
\alias{extract_teredo_client}
\title{IPv6 transition mechanisms}
\usage{
is_ipv4_mapped(x)

is_6to4(x)

is_teredo(x)

extract_ipv4_mapped(x)

extract_6to4(x)

extract_teredo_server(x)

extract_teredo_client(x)
}
\arguments{
\item{x}{An \code{\link{ip_address}} vector}
}
\value{
\itemize{
\item \code{is_xxx()}: A logical vector
\item \code{extract_xxx()}: An \code{\link{ip_address}} vector
}
}
\description{
There are multiple mechanisms designed to help with the transition
from IPv4 to IPv6. These functions make it possible to extract the
embedded IPv4 address from an IPv6 address.
}
\details{
The IPv6 transition mechanisms are described in the IETF memos:
\itemize{
\item IPv4-mapped: \href{https://www.rfc-editor.org/rfc/rfc4291}{RFC 4291}
\item 6to4: \href{https://www.rfc-editor.org/rfc/rfc3056}{RFC 3056}
\item Teredo: \href{https://www.rfc-editor.org/rfc/rfc4380}{RFC 4380}
}
}
\examples{
# these examples show the reserved networks
is_ipv4_mapped(ip_network("::ffff:0.0.0.0/96"))

is_6to4(ip_network("2002::/16"))

is_teredo(ip_network("2001::/32"))

# these examples show embedded IPv4 addresses
extract_ipv4_mapped(ip_address("::ffff:192.168.0.1"))

extract_6to4(ip_address("2002:c000:0204::"))

extract_teredo_server(ip_address("2001:0000:4136:e378:8000:63bf:3fff:fdd2"))

extract_teredo_client(ip_address("2001:0000:4136:e378:8000:63bf:3fff:fdd2"))
}
