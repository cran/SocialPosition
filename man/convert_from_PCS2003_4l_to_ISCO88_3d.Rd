\name{convert_from_PCS2003_4l_to_ISCO88_3d}
\alias{convert_from_PCS2003_4l_to_ISCO88_3d}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
The conversion  of the French PCS 2003 into the ISCO 1988 codes
}
\description{
This function converts occupational codes of the French Professions et Categories Socioprofessionnelles 2003 into the occupational codes of the ISCO 1988 classification on 3 digits
}
\usage{
convert_from_PCS2003_4l_to_ISCO88_3d(PCS2003_4l, data)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{PCS2003_4l}{
The name of the variable containing \href{http://insee.fr/fr/methodes/default.asp?page=nomenclatures/pcs2003/liste_n4.htm}{the French PCS 2003 coded on 4 levels} (i.e. 3 digits followed by 1 letter, such as 226a)
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
Documentation on the French Professions et Categories Socioprofessionnelles (PCS) 2003 and on the ISCO 1988 can be found:
\itemize{
	\item{For the French PCS 2003 on the French National Statistic Agency website, the INSEE (in French): \url{http://insee.fr/fr/methodes/default.asp?page=nomenclatures/pcs2003/pcs2003.htm}}
	\item{For ISCO 1988 on the ILO website: \url{http://www.ilo.org/public/english/bureau/stat/isco/isco88/index.htm}}
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
data(data_PCS2003_4l)

#visualize the data
str(data_PCS2003_4l)
head(data_PCS2003_4l)

#check the variable needed for the conversion
table(data_PCS2003_4l$codes_4_level)

#Then, you can run the function:
data_PCS2003_4l <- convert_from_PCS2003_4l_to_ISCO88_3d(
				   PCS2003_4l=data_PCS2003_4l$codes_4_level, 
				   data=data_PCS2003_4l)

#Check the variable created:
names(data_PCS2003_4l)
table(data_PCS2003_4l$ISCO88_3d)
}
\keyword{convert}