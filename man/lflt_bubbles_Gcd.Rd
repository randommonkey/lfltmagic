% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/bubbles_GcdNum.R
\name{lflt_bubbles_Gcd}
\alias{lflt_bubbles_Gcd}
\title{Bubbles chart Gcd}
\usage{
lflt_bubbles_Gcd(data = NULL, ...)
}
\description{
\code{lflt_bubbles_Gcd()} Create a Leaflet bubbles map based on a particular data type.
In this case, you can load data with only one column, where it's a \strong{geocode column},
or make sure that the first column of your data meet this condition
}
\section{Ftype}{

Gcd
}

\examples{
data <- sample_data("Gcd-Num", n = 30)
lflt_bubbles_Gcd(data)

# Activate data labels
lflt_bubbles_Gcd(data)

# if you want to calculate the average instead of the sum, you can use agg inside a function
lflt_bubbles_Gcd(data,
                       agg = "mean")

}
