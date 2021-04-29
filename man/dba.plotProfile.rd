\name{dba.plotProfile}
\alias{dba.plotProfile}

\title{
BETA: Generate profiles and make profile heatmaps
}
\description{
BETA: Generates profiles and heatmap plots.
}
\usage{
dba.plotProfile(Object, samples, sites, scores, labels, 
                normalize=TRUE, merge=DBA_REPLICATE,
                maxSites=1000, absScores=TRUE,
                doPlot=is(Object,"profileplyr"), 
                ...)
}

\arguments{


\item{Object}{
Either a \code{DBA} object, or a \code{profileplyr-class} object.
}

 \item{samples}{
Sample mask. 

A vector of \code{logical}  or \code{numeric} values indicating
which samples to be included in the plot.
Alternatively, \code{samples} can be specified
as a \code{list} of sample masks to specify sample groups
(using list element names if present).

If absent, all samples will be included; 
if \code{sites} indicates that the results of an analysis should be used, 
the samples involved in the specified contrast will be included 
(if it is a two-way contrast); 
these samples will be merged into two sample groups representing the 
two sides of the contrast.

Some groups of samples may be merged as indicated 
in the \code{merge} parameter.
}

 \item{sites}{
\code{sites} is used to specify which sites are to be used in the heatmaps.
It can be specified in a number of ways:
\itemize{

\item {\code{\link{GRanges}}} {object containing a set of genomic intervals 
(eg. as returned by \code{\link{dba.report}})}

\item {\code{logical} or \code{numeric}} {vector of length > 1 
indicating which sites to include in the heatmaps.
If \code{logical}, vector should be same length as number of 
consensus sites binding matrix.}

\item {\code{\link{GRangesList}}} {containing a list of \code{\link{GRanges}},
each containing a set of genomic intervals. 
Each element of the list will be plotted in a separate heatmap as a group of sites.
If the constituent \code{\link{GRanges}} elements are named, the names will
be used as labels for the site groups.}

\item {A \code{numeric} value} {indicating a contrast on which an analysis has
been run. 
In this case, all of the differentially-bound sites will be included, divided
into two groups: a group of \code{Gain} sites (\code{Fold > 0}) and a group
of \code{Loss} sites (\code{Fold < 0}).}

\item {A report-based \code{DBA} object,} {as generated by \code{\link{dba.report}}.
Each set of peaks in the object will be included as a separate group of sites.}

}

If \code{sites} is absent, and an analysis has been completed, 
the first contrast will be used (\code{sites=1}); 
otherwise, all sites (subject to the \code{maxSites} limit) will be 
included.
}

\item{scores}{
\code{character} string corresponding to the name of a metadata column containing 
numerical scores used to sort the sites (within each group).

These can be any of the \code{\link{mcols}} name values when passing in \code{sites} 
as a \code{GRanges} or \code{GRangesList} object,
or the metadata fields in a report-based DBA object.
If the \code{Object} is of type \code{profileplyr-class}, it can
be any of its \code{\link{mcols}} names for columns corresponding 
to numeric values. 

If \code{scores=NULL}, the sites will be sorted by their
mean counts across all the samples.
}
 
\item{labels}{
Either a vector of sample label names (one for each sample in the plot),
or a set of attributes to include (positive values)
or exclude (negative values).
Attributes include:
\itemize{ 
\item \code{\link{DBA_ID}}
\item \code{\link{DBA_TISSUE}}
\item \code{\link{DBA_FACTOR}}
\item \code{\link{DBA_CONDITION}}
\item \code{\link{DBA_TREATMENT}}
\item \code{\link{DBA_REPLICATE}}
\item \code{\link{DBA_CONSENSUS}}
\item \code{\link{DBA_CALLER}}
}
}

% \item{annotate}{
% \code{logical} indicating if a genome feature annotation should be included.
% }

\item{normalize}{
\code{logical} indicating if the window counts should be normalized
using the normalization established by \code{\link{dba.normalize}}.

Can also be a vector of normalization factors, once for each sample.
All counts for a sample will be divided by the normalization factor for that sample.
}

\item{merge}{
Set of attributes to be used to determine which samples should be merged.
All samples that share the same values for all other attributes except those specified
will be merged by taking their mean count score 
(after normalizing, if specified),
and included as a single sample column.

Can also be specified as a list of vectors of sample numbers (relative to their
order in \code{mask}). 
The samples corresponding to the values in each vector will
be merged into a single sample.

}
\item{maxSites}{
Maximum number of sites to include in a heatmap group.
The top-scoring sites will be retained.
}

\item{absScores}{
If \code{TRUE}, the absolute values for the score values
(specified by the \code{scores} parameter)
will be used for 
sorting sites.
Useful for fold changes. 
If score values are greater than zero, this has no effect.
}


\item{doPlot}{
\code{logical} indicating if the heatmap should be plotted.
If \code{FALSE}, the profiles are generated and returned but not plotted.
}

\item{...}{
additional parameters passed on to \code{profileplyr::generateEnrichedHeatmap}.
}

}

\details{
This feature is currently released in a BETA form.
}
\value{
silently returns a \code{profileplyr-class} object.
}
\references{
Carroll T, Barrows D (2020). profileplyr: Visualization and annotation of 
read signal over genomic ranges with profileplyr. 
DOI: 10.18129/B9.bioc.profileplyr 
}

\author{
Rory Stark
}
%\note{
%plots log2 values of read counts.
%}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
\itemize{ 
\item \code{profileplyr::profileplyr-class}
\item \code{profileplyr::BamBigwig_to_chipProfile}
\item \code{profileplyr::generateEnrichedHeatmap}
\item \code{profileplyr::profileplyr} (Vignette)
\item \code{\link{DBA.config}}
}
}

\examples{
data(tamoxifen_analysis)

# default Profile plot
\dontrun{dba.plotProfile(tamoxifen)}

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
%\keyword{ ~kwd1 }
%\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
