\name{correlation.plot}
\alias{correlation.plot}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ Function to plot directional composite correlations  }
\description{
This function produces and plots the numerical value of the angle at which various composite thetas (based on subdividing the two dimensional coordinate system into eight sub-spaces, see details below) will be maximally correlated with the true score. 
}
\usage{
correlation.plot(a1, a2, d, theta1, theta2, score, correlation = 0, filename = "NA", type = "jpeg")
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{a1}{ A vector of the item discrimination parameters for theta1 }
  \item{a2}{ A vector of the item discrimination parameters for theta2 }
  \item{d}{ A vector of the item difficulty parameters  }
  \item{theta1}{ A vector of the theta 1 values of the examines }
  \item{theta2}{ A vector of the theta 2 values of the examines }
  \item{score}{ A vector of the examinees' total scores }
  \item{correlation}{The correlation between theta 1 and theta 2. If the correlation is not equal to zero, the a1 and a2 will be transformed to maintain the orthogonal representation of the x and y axes.}
  \item{filename}{ The user specified filename given to save the plot; if the filename is provided, the function will automatically save the plot for the users by the provided filename.  }
  \item{type}{ The format of files in which the user saves the plot. Options include (wmf, emf, png,jpg,jpeg,bmp,tif,tiff,ps,eps, pdf). }
}
\details{
 In this plot, the theta1, theta2 plane is divided into eight sub-spaces. In each of these sub-spaces, the numerical value of the angular direction describing the composite score which has the highest correlation with the total score is plotted. This helps to understand the relationship between the number correct score scale and the theta1, theta2 plane. 
The size of the font indicates the relative strength of that correlation compared to the other sub-spaces. Larger fonts indicate stronger positive correlations. 
There are four options available with this function: 
1),correlation.plot(a1, a2, d): This option only requires the item parameters (the examinees' abilities will be randomly simulated according to a bivariate normal distribution);
2),correlation.plot( a1, a2,d, theta1, theta2): This option allows the users to provide both the item and examinee parameters;
3),correlation.plot(theta1, theta2, score): If the item parameters are not available, the user can input the examinees' abilities and number correct scores.
}
\references{ Ackerman,T.(1996),Graphical Representation of Multidimensional Item Response Theory Analyses,Applied Psychological Measurement,20(4),311-329. }
\author{ Zhan Shu, Terry Ackerman, Matthew Burke}
\seealso{\code{\link{centroid.plot}}}
\examples{
a1<-c(0.48,1.16,1.48,0.44,0.36,1.78,0.64,1.10,0.76,0.52,0.83,0.88,0.34,0.74,0.66)
a2<-c( 0.54,0.35,0.44,1.72,0.69,0.47,1.21,1.74,0.89,0.53,0.41,0.98,0.59,0.59,0.70)
d<-c( -1.11,0.29,1.51,-0.82,-1.89,-0.49,1.35,0.82,-0.21,-0.04,-0.68,0.22,-0.86,-1.33,1.21)
correlation.plot(a1,a2,d)}