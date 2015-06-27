\name{clamshell.plot}
\alias{clamshell.plot}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ Function to draw the clamshell plot }
\name{clamshell.plot}
\alias{ clamshell.plot }
\description{
  This function is designed to draw clamshell plots (Reckase & McKinley, 1991) to show the magnitude of the test information relative to location on the theta 1, theta 2 scales 
and to the different angular directions representing various composites of theta1, theta 2. The theta 1 and theta 2 scales are each split into 9 equal intervals resulting in 81 equal sized grids. 
In each grid, the information is represented by a series of angles (specified by the user) between 0 and 90 degrees.
}
\usage{
clamshell.plot(a1, a2, d, correlation = 0, alpha = c(0, pi/18, pi/9, pi/6, pi/4.5, pi/3.6, pi/3, pi/2.57, pi/2.25, pi/2), scale = 0.01, filename = "NA", type = "jpeg")
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{a1}{ A vector of the item discrimination parameters for theta1}
  \item{a2}{ A vector of the item discrimination parameters for theta2 }
  \item{d}{ A vector of the item difficulty parameters  }
  \item{correlation}{ The correlation between theta 1 and theta 2. If the correlation is not equal to zero, the a1 and a2 will be transformed to maintain the orthogonal representation of the x and y axes. }
  \item{alpha}{ A vector of the angular directions along which the information is to be plotted for each clamshell location.}
  \item{scale}{ The control parameter of the plot size (Any number will work, but recommended values are .1 to .2, otherwise the clamshells tend to overlap. Negative values invert the scale and are not recommended.). }
  \item{filename}{ The user specified filename to save the plot; if the filename is provided, the function will automatically save the plot (this argument also requires the ¡®type¡¯ argument).  }
  \item{type}{ The format of files in which the user saves the plot. Options include (wmf, emf, png,jpg,jpeg,bmp,tif,tiff,ps,eps, pdf). }
}
\details{
 The clamshell plot (Reckase & McKinley, 1991) was proposed as a method to represent multidimensional information (MINF). 
To calculate the item/test information in a MIRT framework three key objects are required: 
1), the positive response probability (the probability of a correct response; 2), the negative response probability (the probability of an incorrect response; 
and 3), the angular direction of the information (alpha). In the two dimensional case, the information formula is given as:
MINF = P(theta)*(1- P(theta))*(a1*cos(alpha1)+a2*cos(alpha2))^2,
where alpha1+ alpha2=90 (Ackerman, Gierl, and Walker, 2003). Therefore, both of the thetas and the angular direction (alpha1 or alpha2) have an effect on the test information. 
The clamshell plot demonstrates how the amount of information changes at the different theta coordinates and in different directions. 
}
\references{ 
Ackerman.T,(1994), Using Multidimensional Item Response Theory to understand what the items and tests are measuring, Applied Measurement in Education,7(4),255-278.
Ackerman.T, Gierl.M,(2003), Using Multidimensional Item Response Theory to Evaluate Educational and Psychological Tests, Educational Measurement: Issues and Practices. 
Reckase, M. D., and McKinley, R. L. (1991). The discrimination power of items that measure more than one dimension. Applied Psychological Measurement, 14, 361-373.
 }
\author{ Zhan Shu, Terry Ackerman, Matthew Burke }
\seealso{ \code{\link{inf.2D}},\code{\link{inf.3D}},\code{\link{centroid.plot}},\code{\link{correlation.plot}}}
\examples{
a1<-c(0.48,1.16,1.48,0.44,0.36,1.78,0.64,1.10,0.76,0.52,0.83,0.88,0.34,0.74,0.66)
a2<-c( 0.54,0.35,0.44,1.72,0.69,0.47,1.21,1.74,0.89,0.53,0.41,0.98,0.59,0.59,0.70)
d<-c( -1.11,0.29,1.51,-0.82,-1.89,-0.49,1.35,0.82,-0.21,-0.04,-0.68,0.22,-0.86,-1.33,1.21)
clamshell.plot(a1,a2,d)
clamshell.plot(a1,a2,d,scale=0.1) # Change the size of clamshell plot
clamshell.plot(a1,a2,d,scale=0.2) # Change the size of clamshell plot
clamshell.plot(a1,a2,d,correlation=0.3) # check the impact of thetas' correlation on the information 
clamshell.plot(a1,a2,d,scale=0.1, filename="x", type="bmp") #saves plot to file as specified by user
}
