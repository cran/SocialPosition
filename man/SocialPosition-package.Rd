\name{SocialPosition-package}
\alias{SocialPosition-package}
\alias{SocialPosition}
\docType{package}
\title{
Social Position Indicators Construction Toolbox
}
\description{
Provides to sociologists (and related scientists) a toolbox to facilitate the construction of social position indicators from survey data. Social position indicators refer to what is commonly known as social class and social status. There exists in the sociological literature many theoretical conceptualisation and empirical operationalization of social class and social status. This first version of the package offers tools to construct the International Socio-Economic Index of Occupational Status (ISEI) and the Oesch social class schema. It also provides tools to convert several occupational classifications (PCS82, PCS03, and ISCO08) into a common one (ISCO88) to facilitate data harmonisation work, and tools to collapse (i.e. group) modalities of social position indicators.
}
\details{
\tabular{ll}{
Package: \tab SocialPosition\cr
Type: \tab Package\cr
Version: \tab 1.0.1\cr
Date: \tab 2015-07-07\cr
License: \tab GPL-2 | GPL-3\cr
}

Three main types of functions are available in the package:
\describe{
	\item{The "collapse"functions:}{These functions collapse (i.e. group) different modalities of an occupational grid together}
	\item{The "convert" functions:}{These functions convert different occupational classifications into another one. This can be very useful when you want to harmonize different datasets.}	
	\item{The "recode" functions:}{These functions are specifically the ones which enable you to construct social position indicators}	
}
For the moment, we have developed conversion tools mostly on:
\itemize{
	\item{The French Professions et Categories Socioprofessionnelles 1982 and 2003 (PCS)}
	\item{The International Standard Classification of Occupations 1988 and 2008 (ISCO)}
	}
The following \strong{conversions} are possible:
\tabular{rrrrr}{
    From...To...\tab PCS1982 \tab PCS2003 \tab ISCO1988 \tab ISCO2008\cr
   PCS1982 \tab X \tab Yes \tab in two steps \tab No\cr
   PCS2003 \tab No \tab X \tab  Yes \tab No\cr
   ISCO1988 \tab No \tab No \tab X \tab No\cr
   ISCO2008 \tab No \tab No \tab Yes \tab X\cr
 }

The following social position indicators constructed from ISCO1988 are at the moment available for \strong{recoding}:
\itemize{
	\item{The International Socio-Economic Index of Occupational Status (ISEI)}
	\item{The Oesch class schema}
	}

In the future, we will implement more conversion and recoding tools. If you would like to see some of your tools implemented in the package, please get in touch!
%\tabular{ll}{
%collapse: \tab The collapse function...\cr
%convert: \tab xxxx\cr
%recode: \tab xxx\cr
%}
}
\author{
Julie Falcon (University of Lausanne)

Maintainer: Julie Falcon <julie.falcon@unil.ch>
}
%\references{
%~~ Literature or other references for background information ~~
%}
%~~ Optionally other standard keywords, one per line, ~~
%~~ from file KEYWORDS in the R documentation directory ~~
%\keyword{ package }
%\seealso{
%~~ Optional links to other man pages, e.g. ~~
%~~ \code{\link[<pkg>:<pkg>-package]{<pkg>}} ~~
%}
%\examples{
%~~ simple examples of the most important functions ~~
%}