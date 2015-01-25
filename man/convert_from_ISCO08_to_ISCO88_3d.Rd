\name{convert_from_ISCO08_to_ISCO88_3d}
\alias{convert_from_ISCO08_to_ISCO88_3d}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
The conversion  of the ISCO 2008 classification into the ISCO 1988
}
\description{
This function converts occupational codes of the ISCO 2008 classification into the occupational codes of the ISCO 1988 classification on 3 digits
}
\usage{
convert_from_ISCO08_to_ISCO88_3d(ISCO08, data)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{ISCO08}{
The name of the variable containing \href{'http://www.ilo.org/public/english/bureau/stat/isco/isco08/'}{the ISCO 2008 codes}, ideally coded on 4 digits, although the function also supportes variables coded on 3 digits, and even on 2 digits
}
  \item{data}{
The name of the dataset
}
}
%\details{
%%  ~~ If necessary, more details than the description above ~~
%}
%\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
%}
\references{
Documentation on the ISCO 2008 and 1988 can be found on the ILO website: 
\itemize{
	\item{For ISCO 2008: \url{http://www.ilo.org/public/english/bureau/stat/isco/isco08/}}
	\item{For ISCO 1988: \url{http://www.ilo.org/public/english/bureau/stat/isco/isco88/index.htm}}
	}
}
\author{
Julie Falcon (Berlin Social Science Center - WZB)
}
%\note{
%%  ~~further notes~~
%}

%% ~Make other sections like Warning with \section{Warning }{....} ~

%\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
%}
\examples{
#load the data
data(data_ISCO2008)

#visualize the data
str(data_ISCO2008)
head(data_ISCO2008)

#check the variable ISCO2008 needed for the conversion
table(data_ISCO2008$ISCO2008)

#Then, you can run the function:
data_ISCO2008 <- convert_from_ISCO08_to_ISCO88_3d(
				 ISCO08=data_ISCO2008$ISCO2008,
				 data=data_ISCO2008)

#Check the created variable:
names(data_ISCO2008)
table(data_ISCO2008$ISCO88_3d)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
%\keyword{ ~kwd1 }
%\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
\keyword{convert}
