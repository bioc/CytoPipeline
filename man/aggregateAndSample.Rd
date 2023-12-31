% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utils.R
\name{aggregateAndSample}
\alias{aggregateAndSample}
\title{Aggregate and sample multiple flow frames of a flow set together}
\usage{
aggregateAndSample(
  fs,
  nTotalEvents,
  seed = NULL,
  channels = NULL,
  writeOutput = FALSE,
  outputFile = "aggregate.fcs",
  keepOrder = FALSE
)
}
\arguments{
\item{fs}{a flowCore::flowset}

\item{nTotalEvents}{Total number of cells to select from the input flow
frames}

\item{seed}{seed to be set before sampling for reproducibility.
Default NULL does not set any seed.}

\item{channels}{Channels/markers to keep in the aggregate.
Default NULL takes all channels of the first file.}

\item{writeOutput}{Whether to write the resulting flowframe to a file.
Default FALSE}

\item{outputFile}{Full path to output file. Default "aggregate.fcs"}

\item{keepOrder}{If TRUE, the random subsample will be ordered in the same
way as they were originally ordered in the file. Default = FALSE.}
}
\value{
returns a new flowCore::flowFrame
}
\description{
Aggregate multiple flow frames in order to analyze them
simultaneously.
A new FF, which contains about cTotal cells, with ceiling(cTotal/nFiles)
cells from each file.
Two new columns are added:
a column indicating the original file by index, and
a noisy version of this, for better plotting opportunities,
This function is based on PeacoQC::AggregateFlowframes() where file names
inputs have been replaced by a flowSet input.
}
\examples{

data(OMIP021Samples)

nCells <- 1000
agg <- aggregateAndSample(
    fs = OMIP021Samples,
    nTotalEvents = nCells)
}
