\name{contour.plot}
\alias{contour.plot}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Function to draw the contour plot}
\description{
The contour.plot function is capable of plotting either the test contour or the individual item contour. 
If a1, a2, and d are a vector of length one, the function will plot the item contour; 
otherwise, the test contour will be plotted by the function. 
}
\usage{
contour.plot(a1, a2, d, correlation = 0, level = c(1:length(a1)), vector = FALSE, filename = "NA", type = "jpeg")
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{a1}{ A vector of the item discrimination parameters for theta 1 }
  \item{a2}{ A vector of the item discrimination parameters for theta 2 }
  \item{d}{ A vector of the item difficulty parameters  }
  \item{correlation}{ The correlation between theta 1 and theta 2. 
If the correlation is not equal to zero, the a1 and a2 will be transformed to maintain the orthogonal representation of the x and y axes. }
  \item{level}{ The levels of contour plot. For a test contour, each contour line represents a total score. 
For an item contour, each contour line represents the probability of a correct response conditional upon theta1, theta2. }
  \item{vector}{ A logical value to indicate whether or not the item vector will be plotted in addition to the contour; 
      if VECTOR=TRUE, the item vector will be shown in the plot: if VECTOR=FALSE, it will not be shown.  The default setting is FALSE. }
  \item{filename}{ The user specified filename to save the plot; if the filename is provided, 
the function will automatically save the plot (this argument also requires the ¡®type¡¯ argument).  }
  \item{type}{ The format of files in which the user saves the plot. Options include(wmf, emf, png,jpg,jpeg,bmp,tif,tiff,ps,eps, pdf). }
}
\details{
  This function plots both item contours and test contours, depending on user specification. 
In the case of individual items, the contours represent the probability of a correct response conditional upon theta 1, theta 2. 
In the case of the whole test, the contours represent the expected number correct score conditional upon theta 1, theta 2. 
}
\references{ Ackerman,T.(1996),Graphical Representation of Multidimensional Item Response Theory Analyses,Applied Psychological Measurement,20(4),311-329. }
\author{ Zhan Shu, Terry Ackerman, Matthew Burke }
\seealso{ \code{\link{vector.plot}}}
\examples{
a1<-c(0.48,1.16,1.48,0.44,0.36,1.78,0.64,1.10,0.76,0.52,0.83,0.88,0.34,0.74,0.66)
a2<-c( 0.54,0.35,0.44,1.72,0.69,0.47,1.21,1.74,0.89,0.53,0.41,0.98,0.59,0.59,0.70)
d<-c( -1.11,0.29,1.51,-0.82,-1.89,-0.49,1.35,0.82,-0.21,-0.04,-0.68,0.22,-0.86,-1.33,1.21)
contour.plot(a1,a2,d,level=rep(1:length(a1)) ) # test contour relating theta1,theta2 to expected number correct
contour.plot(a1[1],a2[1],d[1],level=c(0.1,0.2,0.3,0.4,0.5,0.6,0.7))# item1 contour relating theta1,theta2 to probability of a correct response
}

