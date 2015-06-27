\name{surface.2D}
\alias{surface.2D}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ Function to draw the item/test surface plot}
\description{
  This function plots the expected number correct score surface for the theta1, theta2 plane.
}
\usage{
surface.2D(a1, a2, d, correlation = 0, azimuthal_angle = 0, colatitude_angle = 15, filename = "NA", type = "jpeg")
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{a1}{ A vector of the item discrimination parameters for theta1  }
  \item{a2}{ A vector of the item discrimination parameters for theta2 }
  \item{d}{ A vector of the item difficulty parameters  }
  \item{correlation}{The correlation between theta 1 and theta 2. 
        If the correlation is not equal to zero, the a1 and a2 will be transformed to maintain the orthogonal representation of the x and y axes  }
  \item{azimuthal_angle}{ The azimuthal viewing angle (east-west rotation)}
  \item{colatitude_angle}{ The colatitude viewing angle (north-south rotation) }
  \item{filename}{The user specified filename given to save the plot; 
if the filename is provided, the function will automatically save the plot for the users by the provided filename.  }
  \item{type}{ The format of files in which the user saves the plot. Options include (wmf, emf, png,jpg,jpeg,bmp,tif,tiff,ps,eps, pdf). }
}
\references{ Ackerman,T.(1996),Graphical Representation of Multidimensional Item Response Theory Analyses,Applied Psychological Measurement,20(4),311-329.  }
\author{ Zhan Shu, Terry Ackerman, Matthew Burke  }
\seealso{ \code{\link{surface.3D}} }
\examples{
a1<-c(0.48,1.16,1.48,0.44,0.36,1.78,0.64,1.10,0.76,0.52,0.83,0.88,0.34,0.74,0.66)
a2<-c(0.54,0.35,0.44,1.72,0.69,0.47,1.21,1.74,0.89,0.53,0.41,0.98,0.59,0.59,0.70)
d<-c(-1.11,0.29,1.51,-0.82,-1.89,-0.49,1.35,0.82,-0.21,-0.04,-0.68, 0.22,-0.86,-1.33, 1.21)
surface.2D(a1,a2,d,correlation=0,azimuthal_angle=15,colatitude_angle=45,filename="NA",type="jpeg")
}