% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/bubbles_GnmNum.R
\name{lflt_bubbles_Gnm}
\alias{lflt_bubbles_Gnm}
\title{Bubbles chart Gnm}
\usage{
lflt_bubbles_Gnm(data = NULL, ...)
}
\description{
\code{lflt_bubbles_Gnm()} Create a Leaflet bubbles map based on a particular data type.
In this case, you can load data with only one column, where it's a \strong{geoname column},
or make sure that the first column of your data meet this condition
}
\section{Ftype}{

Gnm
}

\examples{
data <- sample_data("Gnm", n = 30)
lflt_bubbles_Gnm(data)

# Activate data labels
lflt_bubbles_Gnm(data)

# if you want to calculate the average instead of the sum, you can use agg inside a function
lflt_bubbles_Gnm(data,
                       agg = "mean")

}
