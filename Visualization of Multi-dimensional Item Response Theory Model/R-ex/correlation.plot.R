### Name: correlation.plot
### Title: Function to show the direction at which the composite thetas
###   have the largest correlation with the total score
### Aliases: correlation.plot
### Keywords: MIRT correlation

### ** Examples

a1<-c(0.48,1.16 , 1.48 , 0.44 , 0.36 , 1.78 , 0.64 , 1.10 , 0.76 , 0.52 , 0.83 ,0.88, 0.34 , 0.74 , 0.66)
a2<-c( 0.54, 0.35, 0.44, 1.72, 0.69, 0.47 1.21 1.74 0.89, 0.53, 0.41, 0.98, 0.59, 0.59, 0.70)
d<-c( -1.11,0.29, 1.51,-0.82,-1.89,-0.49,1.35,0.82,-0.21,-0.04,-0.68, 0.22,-0.86,-1.33, 1.21)
correlation.plot(a1,a2,d)



