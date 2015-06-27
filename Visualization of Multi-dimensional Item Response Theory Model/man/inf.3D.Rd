\name{inf.3D}
\alias{inf.3D}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ Function to plot the information surface in a three-dimensional grid }
\description{
  The function produces a three dimensional plot of the information surface at any user specified level of angular direction for the theta1, theta2 composite.
 The plot allows for free rotation by clicking and dragging in the plot space. 
}
\usage{
inf.3D(alpha, a1, a2, d, correlation = 0)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{alpha}{ The direction of information (the angle between the theta 1 and information). This value reflects the angular direction of the theta1, theta2 composite.
 This value can take on a range from 0 to 90 degrees relative to pi (see example below). }
  \item{a1}{ A vector of the item discrimination parameters for theta1 }
  \item{a2}{ A vector of the item discrimination parameters for theta2  }
  \item{d}{ A vector of the item difficulty parameters }
  \item{correlation}{ The correlation between theta 1 and theta 2. If the correlation is not equal to zero, the a1 and a2 will be transformed to maintain the orthogonal representation of the x and y axes. }
}
\details{
  The information surface function is based on the "rgl" package; the user must load that package to use the function. 
The x-axis represents theta1, the y-axis represents theta2, and the z-axis represents the value of the amount of information.
These plots are directly related to the clamshell plots, and are simply an alternative way to visualize the information available in the test/item. 
"There is an information surface for each composite direction from 0 degrees to 90 degrees. The height of the surface, 
indicating the amount of information, at each of the 81 grid points for a 30 degree composite direction, for example, would be equal to the value indicated 
by the length of the vector in the 30 degree direction in the clamshell plot, at each trait level (Ackerman, 1994, p. 266)."

}
\references{ Ackerman,T.(1996),Graphical Representation of Multidimensional Item Response Theory Analyses,Applied Psychological Measurement,20(4),311-329.
Reckase.M, McKinley.R,(1991), The Discriminating Power of Items That Measure More Than One Dimension, Applied Psychological Measurement,15(4),361-373. 
 }
\author{ Zhan Shu, Terry Ackerman, Matthew Burke }
\seealso{\code{\link{inf.2D}}}
\examples{
a1<-c(0.48,1.16,1.48,0.44,0.36,1.78,0.64,1.10,0.76,0.52,0.83,0.88,0.34,0.74,0.66)
a2<-c( 0.54,0.35,0.44,1.72,0.69,0.47,1.21,1.74,0.89,0.53,0.41,0.98,0.59,0.59,0.70)
d<-c( -1.11,0.29,1.51,-0.82,-1.89,-0.49,1.35,0.82,-0.21,-0.04,-0.68,0.22,-0.86,-1.33,1.21)
inf.3D(pi/3, a1, a2, d)
}