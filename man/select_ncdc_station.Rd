% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/select_ncdc_station.R
\name{select_ncdc_station}
\alias{select_ncdc_station}
\title{Select a single station for data retrieval}
\usage{
select_ncdc_station(stn_df, number = NULL, name = NULL)
}
\arguments{
\item{stn_df}{a data frame of stations that is obtained with (and often filtered
by) the \code{get_ncdc_station_info} function.}

\item{number}{the row number of the station listing for which station data
should be returned.}

\item{name}{the partial name of the station for which station data should
be returned.}
}
\description{
After filtering the list of global meteorological stations
using \code{get_ncdc_station_info} there may be several stations returned,
so this function provides a means for selecting a single station from what
may be a list of several stations.
}
\examples{
\dontrun{
# Obtain a listing of all stations within a bounding box and
# then isolate a single station and obtain a string with the
# \\code{USAF} and \\code{WBAN} identifiers
stations_within_domain <-
  get_ncdc_station_info(lower_lat = 49.000,
                        upper_lat = 49.500,
                        lower_lon = -123.500,
                        upper_lon = -123.000)
cypress_bowl_snowboard_stn <-
  select_ncdc_station(stn_df = stations_within_domain,
                      name = "cypress bowl snowboard")
}
}

