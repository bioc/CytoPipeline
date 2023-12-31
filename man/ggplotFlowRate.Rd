% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ggplots.R
\name{ggplotFlowRate}
\alias{ggplotFlowRate}
\title{plot flow rate as a function of time, using ggplot2}
\usage{
ggplotFlowRate(obj, title = "Flow Rate", timeUnit = 100)
}
\arguments{
\item{obj}{a flowCore::flowFrame or flowCore::flowSet}

\item{title}{a title for the graph}

\item{timeUnit}{which time interval is used to calculate "instant" flow rate
(default = 100 ms)}
}
\value{
a ggplot graph
}
\description{
plot flow rate as a function of time, using ggplot2
}
\examples{

data(OMIP021Samples)

# single flowFrame plot
ggplotFlowRate(OMIP021Samples[[1]])

# two flowFrames plot 
ggplotFlowRate(OMIP021Samples)

# single plot with title
ggplotFlowRate(OMIP021Samples[[1]], title = "Test Flow Rate plot")

# explicit time unit
ggplotFlowRate(OMIP021Samples[[1]], timeUnit = 50)

}
