\name{difsurface.2D}
\alias{difsurface.2D}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ Function to plot two-dimensional difference surface }
\description{
  This function plots the surface representing the difference between the expected number correct score surfaces for the theta1, theta2 plane for two separate test forms. 
}
\usage{
difsurface.2D(a1.1, a2.1, a1.2, a2.2, d1, d2, correlation = 0, azimuthal_angle = 0, colatitude_angle = 15, filename = "NA", type = "jpeg")
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{a1.1}{ A vector of test 1's item discrimination parameters for theta 1  }
  \item{a2.1}{ A vector of test 1's item discrimination parameters for theta 2  }
  \item{a1.2}{ A vector of test 2's item discrimination parameters for theta 1  }
  \item{a2.2}{ A vector of test 2's item discrimination parameters of theta 2  }
  \item{d1}{ A vector of test 1's item difficulty parameters }
  \item{d2}{ A vector of test 2's item difficulty parameters }
  \item{correlation}{ The correlation between theta 1 and theta 2.
 If the correlation is not equal to zero, the a1 and a2 will be transformed to maintain the orthogonal representation of the x and y axes. }
  \item{azimuthal_angle}{ The azimuthal viewing angle (east-west rotation) }
  \item{colatitude_angle}{ The colatitude viewing angle (north-south rotation) }
  \item{filename}{ The user specified filename given to save the plot; if the filename is provided, the function will automatically save the plot for the users by the provided filename. }
  \item{type}{ The format of files in which the user saves the plot. Options include (wmf, emf, png,jpg,jpeg,bmp,tif,tiff,ps,eps, pdf). }
}
\details{
  The x-axis represents theta1, the y-axis represents theta2, and number correct difference score is on the z-axis.
This function plots a surface of the difference between expected number correct scores for two test forms. This allows for the investigation of the degree of parallelism between the two test forms. When the difference surface lies at zero, it is evidence that the tests are parallel (Ackerman, 1996).

}
\references{ Ackerman,T.(1996),Graphical Representation of Multidimensional Item Response Theory Analyses,Applied Psychological Measurement,20(4),311-329. }
\author{ Zhan Shu, Terry Ackerman, Matthew Burke }
\seealso{\code{\link{difsurface.3D}},\code{\link{surface.2D}}
\examples{
a1.1<-c(0.48,1.16,1.48,0.44,0.36,1.78,0.64,1.10,0.76,0.52,0.83,0.88,0.34,0.74, 0.66)
a2.1<-c(0.54,0.35,0.44,1.72,0.69,0.47,1.21,1.74,0.89,0.53,0.41,0.98,0.59,0.59,0.70)
a1.2<-c(0.58,0.16,0.48,0.84,0.76,0.78,1.64,1.10,1.76,1.52,0.53,0.58,0.54,0.84,0.76)
a2.2<-c(1.54,1.35,1.44,1.72,1.69,1.47,0.21,0.74,0.99,0.83,0.71,0.68,0.79,0.69,0.78)
d1<-c(-1.11,0.29,1.51,-0.82,-1.89,-0.49,1.35,0.82,-0.21,-0.04,-0.68, 0.22,-0.86,-1.33, 1.21)
d2<-c(-1.11,0.29,1.51,-0.82,-1.89,-0.49,1.35,0.82,-0.21,-0.04,-0.68, 0.22,-0.86,-1.33, 1.21)
difsurface.2D(a1.1,a2.1,a1.2,a2.2,d1,d2,correlation=0.3)
}