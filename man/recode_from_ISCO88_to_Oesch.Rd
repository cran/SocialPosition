\name{recode_from_ISCO88_to_Oesch}
\alias{recode_from_ISCO88_to_Oesch}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
The recoding of the Oesch class schema from ISCO 1988 codes
}
\description{
The function recodes the Oesch class schema from ISCO 1988 codes and a variable specifying the employment status of the corresponding occupation reported. Please note that this function does NOT uses an educational variable to construct the Oesch class schema
}
\usage{
recode_from_ISCO88_to_Oesch(ISCO88, EMP_STA, SE_zero_emp, SE_one_to_nine_emp,
SE_ten_plus_emp, not_SE, data)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{ISCO88}{
The name of the variable containing \href{'http://www.ilo.org/public/english/bureau/stat/isco/isco88/index.htm'}{ISCO 1988 codes}, ideally coded on 4 digits, although the function also supportes variables coded on 3 digits, and even on 2 digits
}
  \item{EMP_STA}{
The name of the variable containing the corresponding employment status of the occupation. This variable must specify for the self-employed the number of employee they employ. Ideally, this number should be coded in the form of a continuous variable, although in some surveys it takes the form of a categorical variable. It must also have a modality for those who are not self-employed. What is important is to be able to distinguish: 
\enumerate{
	\item The self-employed without employee
	\item The self-employed with one to 9 employee-s
	\item The self-employed with 10 or more employees
	\item Those who are not self-employed (i.e. most likely those who are employees if they declared an occupation)
}
%\tabular{ll}{
%1. \tab The self-employed without employee\cr
%2. \tab The self-employed with one to 9 employee-s\cr
%3. \tab The self-employed with 10 or more employees\cr
%4. \tab Those who are not self-employed (i.e. most likely those who are employees if they declared an occupation)\cr}
}
  \item{SE_zero_emp}{
Indicate here the modality corresponding to the self-employed without employee
}
  \item{SE_one_to_nine_emp}{
Indicate here the modality / modalities corresponding to the self-employed with one to nine employee-s
}
  \item{SE_ten_plus_emp}{
Indicate here the modality / modalities corresponding to the self-employed with ten or more employees
}
  \item{not_SE}{
Indicate here the modality corresponding to those who are not self-employed (i.e. most likely those who are employees if they declared an occupation)
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
The Oesch class schema was constructed by Daniel Oesch. Theoretical foundations and empirical assessment of it can be found in the following publication:

Oesch, Daniel. 2006. Redrawing the class map: stratification and institutions in Britain, Germany, Sweden and Switzerland. Basingstoke: Palgrave Macmillan

He also published an article which relates to the book:

\href{http://iss.sagepub.com/content/21/2/263.short}{Oesch Daniel, 2006: Coming to Grips with a Changing Class Structure An Analysis of Employment Stratification in Britain, Germany, Sweden and Switzerland: International Sociology, 21:263-288}

Further information can also be found on Daniel Oesch's website: 

\url{http://people.unil.ch/danieloesch/socialclasssyntax/}
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
table(data_MCH2007$nb_emp_SE,useNA="always")
table(data_MCH2007$iscoR,useNA="always")

#Then, you can run the function:
data_MCH2007 <- recode_from_ISCO88_to_Oesch(
				ISCO88=data_MCH2007$iscoR, 
				EMP_STA=data_MCH2007$nb_emp_SE, 
				SE_zero_emp=0, 
				SE_one_to_nine_emp=1:9, 
				SE_ten_plus_emp=10:100, 
				not_SE=NA, 
				data=data_MCH2007) 

#Three variables were created:
names(data_MCH2007)
head(data_MCH2007)
table(data_MCH2007$Oesch17,useNA="always")
table(data_MCH2007$Oesch8,useNA="always")
table(data_MCH2007$emplnum,useNA="always")

#If you don't need the 'emplnum' variable, you can delete it by writing:
data_MCH2007$emplnum <- NULL
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
%\keyword{ ~kwd1 }
%\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
\keyword{recode}