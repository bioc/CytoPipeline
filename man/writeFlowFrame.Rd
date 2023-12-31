% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utils.R
\name{writeFlowFrame}
\alias{writeFlowFrame}
\title{write flowFrame to disk}
\usage{
writeFlowFrame(
  ff,
  dir = ".",
  useFCSFileName = TRUE,
  prefix = "",
  suffix = "",
  format = c("fcs", "csv"),
  csvUseChannelMarker = TRUE,
  ...
)
}
\arguments{
\item{ff}{a flowCore::flowFrame}

\item{dir}{an existing directory to store the flowFrame,}

\item{useFCSFileName}{if TRUE filename used will be based on original fcs
filename}

\item{prefix}{file name prefix}

\item{suffix}{file name suffix}

\item{format}{either fcs or csv}

\item{csvUseChannelMarker}{if TRUE (default), converts the channels to the
corresponding marker names (where the Marker is not NA). This setting is
only applicable to export in csv format.}

\item{...}{other arguments (not used)}
}
\value{
nothing
}
\description{
wrapper around flowCore::write.FCS() or utils::write.csv
that discards any additional parameter passed in (...)
}
\examples{
rawDataDir <-
    system.file("extdata", package = "CytoPipeline")
sampleFiles <-
    file.path(rawDataDir, list.files(rawDataDir, pattern = "Donor"))

truncateMaxRange <- FALSE
minLimit <- NULL

# create flowCore::flowSet with all samples of a dataset
res <- readSampleFiles(
    sampleFiles = sampleFiles,
    whichSamples = "all",
    truncate_max_range = truncateMaxRange,
    min.limit = minLimit)
    
ff_c <- compensateFromMatrix(res[[2]], matrixSource = "fcs") 
outputDir <- base::tempdir()
writeFlowFrame(ff_c, 
               dir = outputDir,
               suffix = "_fcs_export",
               format = "csv")

}
