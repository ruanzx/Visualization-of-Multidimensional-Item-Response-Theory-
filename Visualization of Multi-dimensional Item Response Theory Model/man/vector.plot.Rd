\name{vector.plot}
\alias{vector.plot}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ Function to draw vectors to represent the items }
\description{
  This function produces vector plots to represent each item¡¯s location in the multidimensional space, as well as the amount and angular direction of information provided by the item.
}
\usage{
vector.plot(a1, a2, d, correlation = 0, S_category = list(c(1:length(a1))), filename = "NA", type = "jpeg")
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{a1}{ A vector of the item discrimination parameters for theta1  }
  \item{a2}{ A vector of the item discrimination parameters for theta2 }
  \item{d}{ A vector of the item difficulty parameters }
  \item{correlation}{ The correlation between theta 1 and theta 2. 
If the correlation is not equal to zero, the a1 and a2 will be transformed to maintain the orthogonal representation of the x and y axes. }
  \item{S_category}{ The item categories  }
  \item{filename}{ The user specified filename given to save the plot; 
  if the filename is provided, the function will automatically save the plot for the users by the provided filename. }
  \item{type}{ The format of files in which the user saves the plot. Options include(wmf, emf, png,jpg,jpeg,bmp,tif,tiff,ps,eps, pdf). }
}
\details{
  Each item vector is plotted as an arrow."The item vector originates at, and is graphed orthogonal to, the p = .5 equiprobability contour (Ackerman, 1994, p.261)."
The length of the vector is indicative of the amount multidimensional discrimination (MDISC) provided by the item, with longer arrows portraying a greater degree of discrimination. The angular direction of the vector plot indicates that composite of theta1, theta2 that is best measured by the item.
The function allows users to define the item groups and will plot items belonging to different groups in different colors. The user has to use a list to define the item categories (see the example).
}
\references{Ackerman,T.(1996),Graphical Representation of Multidimensional Item Response Theory Analyses,Applied Psychological Measurement,20(4),311-329. }
\author{  Zhan Shu, Terry Ackerman, Matthew Burke }
\seealso{ \code{\link{contour.plot}}}
\examples{
a1<-c(0.48,1.16,1.48,0.44,0.36,1.78,0.64,1.10,0.76,0.52,0.83,0.88,0.34,0.74,0.66)
a2<-c( 0.54,0.35,0.44,1.72,0.69,0.47,1.21,1.74,0.89,0.53,0.41,0.98,0.59,0.59,0.70)
d<-c( -1.11,0.29,1.51,-0.82,-1.89,-0.49,1.35,0.82,-0.21,-0.04,-0.68,0.22,-0.86,-1.33,1.21)
vector.plot(a1,a2,d)
vector.plot(a1,a2,d,S_category=list(c(1,2,3),c(4,5,6,7,8,9,10,11,12,13,14,15))) # we define two groups of items: item 1,2 and 3 go into one group and the others form the other group.
}