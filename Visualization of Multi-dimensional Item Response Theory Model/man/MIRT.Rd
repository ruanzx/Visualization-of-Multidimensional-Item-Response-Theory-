\name{MIRT}
\alias{MIRT}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ Function to calculate the examines' positive response probability }
\description{
  This function calculates the positive response probability (i.e., the probability of a correct response given the item and person parameters) 
based on the two dimensional compensatory IRT model. 
}
\usage{
MIRT(theta1, theta2, a1, a2, d)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{theta1}{ A vector of the theta 1 values of the examinees }
  \item{theta2}{ A vector of the theta 2 values of the examinees }
  \item{a1}{ The item discrimination parameters for theta 1 
  \item{a2}{ The item discrimination parameters for theta 2 }
  \item{d}{ The item difficulty parameters }
}
\value{
  This function calculates the probability of a correct response for each examinee to each item. 
These probabilities are recorded in a matrix (MIRT) where the rows represent the examinees, 
and the columns represent items.
}
\references{ Ackerman,T.(1996),Graphical Representation of Multidimensional Item Response Theory Analyses,Applied Psychological Measurement,20(4),311-329.
Reckase.M, McKinley.R,(1991), The Discriminating Power of Items That Measure More Than One Dimension, Applied Psychological Measurement,15(4),361-373. 
}
\author{ Zhan Shu, Terry Ackerman, Matthew Burke }
\examples{
theta1<-rnorm(1000,0,1)
theta2<-rnorm(1000,0,1)
a1<-c(0.48,1.16,1.48,0.44,0.36,1.78,0.64,1.10,0.76,0.52,0.83,0.88,0.34,0.74,0.66)
a2<-c( 0.54,0.35,0.44,1.72,0.69,0.47,1.21,1.74,0.89,0.53,0.41,0.98,0.59,0.59,0.70)
d<-c( -1.11,0.29,1.51,-0.82,-1.89,-0.49,1.35,0.82,-0.21,-0.04,-0.68,0.22,-0.86,-1.33,1.21)
MIRT(theta1,theta2,a1,a2,d)
}