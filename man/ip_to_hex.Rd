% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ip_to_hex.R
\name{ip_to_hex}
\alias{ip_to_hex}
\alias{hex_to_ip}
\title{Represent address as hexadecimal}
\usage{
ip_to_hex(x)

hex_to_ip(x, is_ipv6 = NULL)
}
\arguments{
\item{x}{\itemize{
\item \code{ip_to_hex()}: An \code{\link{ip_address}} vector
\item \code{hex_to_ip()}: A character vector containing hexadecimal strings
}}

\item{is_ipv6}{A logical vector indicating whether to construct an IPv4 or
IPv6 address. If \code{NULL} (the default), then IPv4 is preferred but an IPv6
address is constructed when \code{x} is too large for the IPv4 address space.}
}
\value{
\itemize{
\item \code{ip_to_hex()}: A character vector
\item \code{hex_to_ip()}: An \code{\link{ip_address}} vector
}
}
\description{
Encode or decode an \code{\link{ip_address}} as a hexadecimal string.
}
\examples{
x <- ip_address(c("192.168.0.1", "2001:db8::8a2e:370:7334", NA))
ip_to_hex(x)

hex_to_ip(ip_to_hex(x))
}
\seealso{
Other address representations: 
\code{\link{ip_to_binary}()},
\code{\link{ip_to_bytes}()},
\code{\link{ip_to_integer}()}
}
\concept{address representations}
