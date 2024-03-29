#' IPv6 transition mechanisms
#'
#' There are multiple mechanisms designed to help with the transition
#' from IPv4 to IPv6. These functions make it possible to extract the
#' embedded IPv4 address from an IPv6 address.
#'
#' @details
#' The IPv6 transition mechanisms are described in the IETF memos:
#' * IPv4-mapped: [RFC 4291](https://www.rfc-editor.org/rfc/rfc4291)
#' * 6to4: [RFC 3056](https://www.rfc-editor.org/rfc/rfc3056)
#' * Teredo: [RFC 4380](https://www.rfc-editor.org/rfc/rfc4380)
#'
#' @param x An [`ip_address`] vector
#'
#' @return
#' * `is_xxx()`: A logical vector
#' * `extract_xxx()`: An [`ip_address`] vector
#'
#' @examples
#' # these examples show the reserved networks
#' is_ipv4_mapped(ip_network("::ffff:0.0.0.0/96"))
#'
#' is_6to4(ip_network("2002::/16"))
#'
#' is_teredo(ip_network("2001::/32"))
#'
#' # these examples show embedded IPv4 addresses
#' extract_ipv4_mapped(ip_address("::ffff:192.168.0.1"))
#'
#' extract_6to4(ip_address("2002:c000:0204::"))
#'
#' extract_teredo_server(ip_address("2001:0000:4136:e378:8000:63bf:3fff:fdd2"))
#'
#' extract_teredo_client(ip_address("2001:0000:4136:e378:8000:63bf:3fff:fdd2"))
#' @name ipv6-transition
NULL

#' @rdname ipv6-transition
#' @export
is_ipv4_mapped <- function(x) {
  check_ip(x)
  wrap_is_ipv4_mapped(x)
}

#' @rdname ipv6-transition
#' @export
is_6to4 <- function(x) {
  check_ip(x)
  wrap_is_6to4(x)
}

#' @rdname ipv6-transition
#' @export
is_teredo <- function(x) {
  check_ip(x)
  wrap_is_teredo(x)
}

#' @rdname ipv6-transition
#' @export
extract_ipv4_mapped <- function(x) {
  check_address(x)
  wrap_extract_ipv4_mapped(x)
}

#' @rdname ipv6-transition
#' @export
extract_6to4 <- function(x) {
  check_address(x)
  wrap_extract_6to4(x)
}

#' @rdname ipv6-transition
#' @export
extract_teredo_server <- function(x) {
  check_address(x)
  wrap_extract_teredo_server(x)
}

#' @rdname ipv6-transition
#' @export
extract_teredo_client <- function(x) {
  check_address(x)
  wrap_extract_teredo_client(x)
}
