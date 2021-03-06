\name{getRouteMetadata}
\alias{getRouteMetadata}
\title{Retrieve metadata for a specified route
}
\description{
Retrieves the available metadata for a specified flight route. These include the 
airports of origin and destination, the operator IATA code and the flight
number.
}
\usage{
getRouteMetadata(route, includeAirportsMetadata=FALSE)
}
\arguments{
  \item{route}{string with the call sign of a route (for example, "AAL683" for 
  American Airlines flight number 683.
  }
  \item{includeAirportsMetadata}{logical indicating if the data about the origin and destination
  airports of the route should also be retrieved. If not, only the ICAO24 code of the airports will be
  included.
  }
}
\value{
An object of class \code{\link{openSkiesRoute}}. See the \code{\link{openSkiesRoute}}
documentation for details on the fields for the class.
}
\references{
https://en.wikipedia.org/wiki/Flight_number
}
\examples{
# Obtain metadata for the route with call sign AAL683

if(interactive()){
getRouteMetadata("AAL683")
}
}
