\name{collapse_PCS2003_4l}
\alias{collapse_PCS2003_4l}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
The collapsing of the French Professions et Categories Socioprofessionnelles (PCS 2003) from 4 levels
}
\description{
This function collapses the French Professions et Categories Socioprofessionnelles (PCS 2003) from 4 levels (niveau 4) into 1 level, 2 levels and 3 levels (niveaux 1, 2 and 3)
}
\usage{
collapse_PCS2003_4l(PCS2003_4l, data)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{PCS2003_4l}{
The name of the variable containing \href{'http://insee.fr/fr/methodes/default.asp?page=nomenclatures/pcs2003/liste_n4.htm'}{the French PCS 2003 coded on 4 levels} (i.e. 3 digits followed by 1 letter, such as 226a)
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
data(data_PCS2003_4l)

#visualize the data
str(data_PCS2003_4l)
head(data_PCS2003_4l)

#check the variable PCS2003_4l needed for the conversion
table(data_PCS2003_4l$codes_4_level)

#Then, you can run the function:
data_PCS2003_4l <- collapse_PCS2003_4l(
				   PCS2003_4l=data_PCS2003_4l$codes_4_level,
				   data=data_PCS2003_4l)

#Three variables corresponding each to one different level of collapsing were created:
names(data_PCS2003_4l)
table(data_PCS2003_4l$PCS2003_3l) #3 level
table(data_PCS2003_4l$PCS2003_2l) #2 level
table(data_PCS2003_4l$PCS2003_1l) #1 level
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
%\keyword{ ~kwd1 }
%\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
\keyword{collapse}
