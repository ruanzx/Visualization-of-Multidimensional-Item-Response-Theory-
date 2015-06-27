\name{direction.plot}
\alias{direction.plot}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ Function to show the direction with maximum information }
\description{
  The function plots the numerical value of the angular direction of the theta1, theta2 composite having the maximum information (i.e., where the standard error of measurement is smallest) conditional upon theta1, theta2. 
The theta1, theta 2 grid is split up into 81 equal size intervals (9 x 9). 
}
\usage{
direction.plot(a1, a2, d, correlation = 0, filename = "NA", type = "jpeg")
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{a1}{ A vector of the item discrimination parameters for theta1}
  \item{a2}{ A vector of the item discrimination parameters for theta2 }
  \item{d}{ A vector of the item difficulty parameters  }
  \item{correlation}{ The correlation between theta 1 and theta 2. 
If the correlation is not equal to zero, the a1 and a2 will be transformed to maintain the orthogonal representation of the x and y axes. }
  \item{filename}{ The user specified filename given to save the plot; if the filename is provided, the function will automatically save the plot for the users by the provided filename.  }
  \item{type}{ The format of files in which the user saves the plot. Options include (wmf, emf, png,jpg,jpeg,bmp,tif,tiff,ps,eps, pdf). }
}
\details{
  The direction plot provides a description of the angular direction associated with the theta1, theta2 composite 
providing the most information for a given values of theta1, theta2. 
"At each selected  point is the number denoting the angular direction of the theta1, theta2 composite that is being measured most precisely. 
The font size of the number indicates the relative amount of information in the specified direction: the larger the font, the greater the measurement precision (Ackerman, 1996, p.319)."
}
\references{ Ackerman,T.(1996),Graphical Representation of Multidimensional Item Response Theory Analyses,Applied Psychological Measurement,20(4),311-329.  }
\author{  Zhan Shu, Terry Ackerman, Matthew Burke  }
\seealso{ \code{\link{Angle}} }
\examples{
a1<-c(0.48,1.16,1.48,0.44,0.36,1.78,0.64,1.10,0.76,0.52,0.83,0.88,0.34,0.74,0.66)
a2<-c( 0.54,0.35,0.44,1.72,0.69,0.47,1.21,1.74,0.89,0.53,0.41,0.98,0.59,0.59,0.70)
d<-c( -1.11,0.29,1.51,-0.82,-1.89,-0.49,1.35,0.82,-0.21,-0.04,-0.68,0.22,-0.86,-1.33,1.21)
direction.plot(a1,a2,d, correlation=0.3)
}