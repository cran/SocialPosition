\name{collapse_PCS2003_3l}
\alias{collapse_PCS2003_3l}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
The collapsing of the French Professions et Categories Socioprofessionnelles (PCS 2003) from 3 levels
}
\description{
This function collapses the French Professions et Categories Socioprofessionnelles (PCS 2003) from 3 levels (niveau 3) into 1 level and 2 levels (niveaux 1 and 2)
}
\usage{
collapse_PCS2003_3l(PCS2003_3l, data)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{PCS2003_3l}{
The name of the variable containing \href{'http://insee.fr/fr/methodes/default.asp?page=nomenclatures/pcs2003/liste_n3.htm'}{the French PCS 2003 coded on 3 levels}
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
Documentation on the French Professions et Categories Socioprofessionnelles (PCS) 2003 can be found on the French National Statistic Agency, the INSEE (in French only): 

\url{http://insee.fr/fr/methodes/default.asp?page=nomenclatures/pcs2003/pcs2003.htm}
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
data(data_PCS2003_3l)

#visualize the data
str(data_PCS2003_3l)
head(data_PCS2003_3l)

#check the variable PCS2003_3l needed for the conversion
table(data_PCS2003_3l$codes_3_level)

#Then, you can run the function:
data_PCS2003_3l <- collapse_PCS2003_3l(
				   PCS2003_3l=data_PCS2003_3l$codes_3_level,
				   data=data_PCS2003_3l)

#Two variables corresponding each to one different level of collapsing were created:
names(data_PCS2003_3l)
table(data_PCS2003_3l$PCS2003_2l) #CSP 2003 on 2 levels
table(data_PCS2003_3l$PCS2003_1l) #CSP 2003 on 1 level
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
%\keyword{ ~kwd1 }
%\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
\keyword{collapse}