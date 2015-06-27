### Name: clamshell.plot
### Title: Function to draw the clamshell plot
### Aliases: clamshell.plot
### Keywords: MIRT clamshell

### ** Examples

a1<-c(0.48,1.16,1.48,0.44,0.36, 1.78 , 0.64 , 1.10 , 0.76 , 0.52 , 0.83 ,0.88, 0.34 , 0.74 , 0.66)
a2<-c( 0.54, 0.35, 0.44, 1.72, 0.69, 0.47 1.21 1.74 0.89, 0.53, 0.41, 0.98, 0.59, 0.59, 0.70)
d<-c( -1.11,0.29, 1.51,-0.82,-1.89,-0.49,1.35,0.82,-0.21,-0.04,-0.68, 0.22,-0.86,-1.33, 1.21)
clamshell.plot(a1,a2,d)
clamshell.plot(a1,a2,d,scale=0.1) # Change the size of clamshell plot
clamshell.plot(a1,a2,d,correlation=0.3) # check the impact of thetas' correlation on the information 



