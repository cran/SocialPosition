\name{convert_from_PCS1982_4l_to_PCS2003_4l}
\alias{convert_from_PCS1982_4l_to_PCS2003_4l}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
The conversion  of the French PCS 1982 into the French PCS 2003
}
\description{
This function converts occupational codes of the French Professions et Categories Socioprofessionnelles from the 1982 codes into the 2003 codes
}
\usage{
convert_from_PCS1982_4l_to_PCS2003_4l(PCS1982_4l, data)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{PCS1982_4l}{
The name of the variable containing 
%\href{'http://www.insee.fr/fr/methodes/default.asp?page=nomenclatures/pcsese/pcsese1982/liste_n3.htm'}{the French PCS 1982 coded on 3 levels (i.e. 4 digits)}
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
Documentation on the French Professions et Categories Socioprofessionnelles (PCS) 1982 and 2003 can be found on the French National Statistic Agency, the INSEE (only in French): 
\itemize{
	\item{For 1982: \url{http://www.insee.fr/fr/methodes/default.asp?page=nomenclatures/pcsese/pcsese1982/pcsese1982.htm}}
	\item{For 2003: \url{http://insee.fr/fr/methodes/default.asp?page=nomenclatures/pcs2003/pcs2003.htm}}
	}
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
data(data_PCS1982)

#visualize the data
str(data_PCS1982)
head(data_PCS1982)

#check the variable PCS1982 needed for the conversion
table(data_PCS1982$PCS1982)

#Then, you can run the function:
data_PCS1982 <- convert_from_PCS1982_4l_to_PCS2003_4l(
				PCS1982_4l=data_PCS1982$PCS1982,
				data=data_PCS1982)

#Check the variables created:
names(data_PCS1982)
table(data_PCS1982$PCS2003_4l) # CSP 2003 4 digits (4 niveaux)
table(data_PCS1982$PCS2003_3l) # CSP 2003 3 digits (3 niveaux)
table(data_PCS1982$PCS2003_2l) # CSP 2003 2 digits (2 niveaux)
table(data_PCS1982$PCS2003_1l) # CSP 2003 1 digit (1 niveau)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
%\keyword{ ~kwd1 }
%\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
\keyword{convert}
