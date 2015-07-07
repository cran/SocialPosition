\name{collapse_PCS2003_2l}
\alias{collapse_PCS2003_2l}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
The collapsing of the French Professions et Categories Socioprofessionnelles (PCS 2003) from 2 levels
}
\description{
This function collapses the French Professions et Categories Socioprofessionnelles (PCS 2003) from 2 levels (niveau 2) into 1 level (niveau 1)
}
\usage{
collapse_PCS2003_2l(PCS2003_2l, data)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{PCS2003_2l}{
The name of the variable containing \href{http://insee.fr/fr/methodes/default.asp?page=nomenclatures/pcs2003/liste_n2.htm}{the French PCS 2003 coded on 2 levels}
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
Julie Falcon (University of Lausanne)
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
data(data_PCS2003_2l)

#visualize the data
str(data_PCS2003_2l)
head(data_PCS2003_2l)

#check the variable PCS2003_2l needed for the conversion
table(data_PCS2003_2l$codes_2_level)

#Then, you can run the function:
data_PCS2003_2l <- collapse_PCS2003_2l(
				   PCS2003_2l=data_PCS2003_2l$codes_2_level,
				   data=data_PCS2003_2l)

#The corresponding variable was created:
names(data_PCS2003_2l)
table(data_PCS2003_2l$PCS2003_1l)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
%\keyword{ ~kwd1 }
%\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
\keyword{collapse}
