\name{surface.3D}
\alias{surface.3D}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ Function to plot the item/test surface in three-dimensional style }
\description{
  This function creates a three dimensional plot of either the item or test surface. The plot allows for free rotation by clicking and dragging in the plot space. 
}
\usage{
surface.3D(a1, a2, d, correlation = 0)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{a1}{ A vector of the item discrimination parameters for theta1  }
  \item{a2}{ A vector of the item discrimination parameters for theta2  }
  \item{d}{ A vector of the item difficulty parameters  }
  \item{correlation}{ The correlation between theta 1 and theta 2. 
If the correlation is not equal to zero, the a1 and a2 will be transformed to maintain the orthogonal representation of the x and y axes. }
}
\details{
  The package is built based on "rgl" pacakge, and must be loaded before use. 
This function plots either the item or test response surface. The x-axis represents theta1, and the y-axis represents theta2. 
When an item is plotted, the surface value reflects the probability of a correct response along the z-axis. 
The plotted surface will be made up of two colors. 
The color change corresponds to the shift from less than to greater than a .5 probability of a correct response to the item. 
When the test surface is plotted, the surface value represents the expected number correct score along the z-axis. 

}
\references{ Ackerman,T.(1996),Graphical Representation of Multidimensional Item Response Theory Analyses,Applied Psychological Measurement,20(4),311-329.  }
\author{ Zhan Shu, Terry Ackerman, Matthew Burke  }
\seealso{ \code{\link{clamshell.plot}}}
\examples{
a1<-c(0.48,1.16,1.48,0.44,0.36,1.78,0.64,1.10,0.76,0.52,0.83,0.88,0.34,0.74,0.66)
a2<-c( 0.54,0.35,0.44,1.72,0.69,0.47,1.21,1.74,0.89,0.53,0.41,0.98,0.59,0.59,0.70)
d<-c( -1.11,0.29,1.51,-0.82,-1.89,-0.49,1.35,0.82,-0.21,-0.04,-0.68,0.22,-0.86,-1.33,1.21)
surface.3D(a1,a2,d,correlation=0.3)
}
