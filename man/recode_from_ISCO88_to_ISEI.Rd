\name{recode_from_ISCO88_to_ISEI}
\alias{recode_from_ISCO88_to_ISEI}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
The recoding of the ISEI index from ISCO 1988 codes
}
\description{
This function recodes the International Socio-Economic Index of Occupational Status (ISEI) from ISCO 1988 codes
}
\usage{
recode_from_ISCO88_to_ISEI(ISCO88, data)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{ISCO88}{
The name of the variable containing \href{'http://www.ilo.org/public/english/bureau/stat/isco/isco88/index.htm'}{ISCO 1988 codes}, ideally coded on 4 digits, although the function also supportes variables coded on 3 digits, and even on 2 digits
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
The ISEI index was constructed by Harry Ganzeboom, Paul De Graaf and Donald Treiman. Please refer to the following article to find out more about this index and to cite it:
 
\href{http://www.sciencedirect.com/science/article/pii/0049089X9290017B}{
Ganzeboom, H.B.G. De Graaf, P.M. & Treiman, D.J. (1992): A Standard International Socio-Economic Index of Occupational Status. Social Science Research 21 (1), 1-56}

The function was constructed from Harry Ganzeboom's SPSS syntax available on his website:

\url{http://www.harryganzeboom.nl/isco88/index.htm}

This syntax is part of the "International Stratification and Mobility File" project which provides several social position conversion tools in SPSS format:

\href{http://www.harryganzeboom.nl/ISMF/index.htm}{Ganzeboom, Harry B.G.; Treiman, Donald J., 'International Stratification and Mobility File: Conversion Tools'}
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
data(data_MCH2007)

#visualize the data
str(data_MCH2007)
head(data_MCH2007)

#check the variables needed for social position coding
table(data_MCH2007$iscoR,useNA="always")

#Then, you can run the function:
data_MCH2007 <- recode_from_ISCO88_to_ISEI(
				ISCO88=data_MCH2007$iscoR, 
				data=data_MCH2007) 

#Check the variable created:
names(data_MCH2007)
head(data_MCH2007)
table(data_MCH2007$ISEI,useNA="always")
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
%\keyword{ ~kwd1 }
%\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
\keyword{recode}
