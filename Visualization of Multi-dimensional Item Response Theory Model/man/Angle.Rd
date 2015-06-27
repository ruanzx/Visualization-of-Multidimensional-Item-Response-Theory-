\name{Angle}
\alias{Angle}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ Function to plot the angle of maximum information}
\description{
This function calculates the average angle of maximum information conditioned upon expected total score. 
This represents the composite of theta 1 and theta 2 being best measured at each expected number correct (ENC) score. 
The x-axis represents the Expected Number Correct (ENC) score and the y-axis represents the value of the angle. 
Each plotted point is also labeled with the value of the angle.
}
\usage{
Angle(a1, a2, d, correlation = 0)
}
\arguments{
  \item{a1}{ The item discrimination parameters for theta 1  }
  \item{a2}{ The item discrimination parameters for theta 2 }
  \item{d}{ The item difficulty parameters  }
  \item{correlation}{The correlation between theta 1 and theta 2.
        If the correlation is not equal to zero, 
        the a1 and a2 will be transformed to maintain 
        the orthogonal representation of the x and y axes. }
}
\details{
  The function automatically simulates the two dimensions of thetas based on a multivariate normal distribution with mean zero and the provided correlation. 

"Any curvilinearity in the ENC contours implies that differences between levels of ENC may not have the same meaning (in terms of the theata 1, theta 2 composites) 
 throughout all regions of the trait plane (Ackerman, 1996, p.322)."

}
\references{ Ackerman,T.(1996),Graphical Representation of Multidimensional Item Response Theory Analyses,Applied Psychological Measurement,20(4),311-329. }
\author{ Zhan Shu, Terry Ackerman, Matthew Burke}
\seealso{\code{\link{direction.plot}}}
\examples{
a1<-c(0.48,1.16,1.48,0.44,0.36,1.78,0.64,1.10,0.76,0.52,0.83,0.88,0.34,0.74,0.66)
a2<-c( 0.54,0.35,0.44,1.72,0.69,0.47,1.21,1.74,0.89,0.53,0.41,0.98,0.59,0.59,0.70)
d<-c(-1.11,0.29,1.51,-0.82,-1.89,-0.49,1.35,0.82,-0.21,-0.04,-0.68,0.22,-0.86,-1.33,1.21)
Angle(a1,a2,d,correlation=0)
Angle(a1,a2,d,correlation=0.3) # Checking the change of the angles.
}
