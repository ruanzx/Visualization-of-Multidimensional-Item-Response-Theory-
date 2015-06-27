\name{centroid.plot}
\alias{centroid.plot}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ Function to draw the centroid plot }
\description{
  The centroid plot shows the relationship between a given total score and the average theta 1, theta 2 (i.e., the centroid) values of the examinees achieving that total score. 
The plot represents the two ability dimensions in an orthogonal fashion and plots a point for each number correct score. 
The size of the circle plotted and the conditional variance of the centroid are directly related.  
The larger the conditional variance for the centroid, the larger the size of the circle plotted.
}
\usage{
centroid.plot(a1, a2, d, theta1, theta2, score, correlation = 0, condition = TRUE, filename = "NA", type = "jpeg")
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{a1}{ A vector of the item discrimination parameters for theta1  }
  \item{a2}{ A vector of the item discrimination parameters for theta2  }
  \item{d}{ A vector of the item difficulty parameters  }
  \item{theta1}{ A vector of the theta 1 values of the examines }
  \item{theta2}{ A vector of the theta 2 values of the examines }
  \item{score}{ A vector of the examinees' total scores }
  \item{correlation}{ The correlation between theta 1 and theta 2. 
        If the correlation is not equal to zero, the a1 and a2 will be transformed to maintain the orthogonal representation of the x and y axes }
  \item{condition}{ A logical value used to indicate whether or not to plot the variance of the centroids; 
if condition=TRUE, the conditional variance of the thetas will be shown in the plot. 
If condition=FALSE, the conditional variances will be omitted from the plot.  }
  \item{filename}{ The user specified filename given to save the plot; if the filename is provided, 
  the function will automatically save the plot for the users by the provided filename.  }
  \item{type}{ The format of files in which the user saves the plot. 
Options include (wmf, emf, png,jpg,jpeg,bmp,tif,tiff,ps,eps, pdf).}
}
\details{
There are four options available with this function: 
1),centroid.plot(a1, a2, d): This option only requires the item parameters (the examinees' abilities will be randomly simulated according to a bivariate normal distribution);
2),centroid.plot( a1, a2,d, theta1, theta2): This option allows the users to provide both the item and examinee parameters;
3),centroid.plot(theta1, theta2, score): If the item parameters are not available, the user can input the examinees' abilities and number correct scores;
4),centroid.plot(score). The function will still plot the centroid if only examinee scores are available, however, the result returned by the function will not be accurate. 
Any of the four input methods will work well with the function. 
}
\value{
  The x axis represents theta1; the y axis represents theta2; 
  the colored numbers represent the total score at the corresponding theta 1 and theta 2.
}
\references{Ackerman,T.(1996),Graphical Representation of Multidimensional Item Response Theory Analyses,Applied Psychological Measurement,20(4),311-329.  }
\author{ Zhan Shu, Terry Ackerman, Matthew Burke }
\seealso{\code{\link{correlation.plot}}}
\examples{
a1<-c(0.48,1.16,1.48,0.44,0.36,1.78,0.64,1.10,0.76,0.52,0.83,0.88,0.34,0.74,0.66)
a2<-c( 0.54,0.35,0.44,1.72,0.69,0.47,1.21,1.74,0.89,0.53,0.41,0.98,0.59,0.59,0.70)
d<-c( -1.11,0.29,1.51,-0.82,-1.89,-0.49,1.35,0.82,-0.21,-0.04,-0.68,0.22,-0.86,-1.33,1.21)
centroid.plot(a1,a2,d)
centroid.plot(a1,a2,d,condition=FALSE)
centroid.plot(a1,a2,d,filename="centroid",type="jpeg")
}

