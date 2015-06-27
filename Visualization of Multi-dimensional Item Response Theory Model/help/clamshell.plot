clamshell.plot             package:MIRTG             R Documentation

_F_u_n_c_t_i_o_n _t_o _d_r_a_w _t_h_e _c_l_a_m_s_h_e_l_l _p_l_o_t

_D_e_s_c_r_i_p_t_i_o_n:

     The function is designed to draw the clamshell plot to show the
     magnitude of the test information at diferent theta positions and
     directions.

_U_s_a_g_e:

     clamshell.plot(a1, a2, d, correlation=0, alpha =c(0, pi/18, pi/9, pi/6, pi/4.5, pi/3.6, pi/3, pi/2.57, pi/2.25, pi/2), scale = 0.01, filename = "NA", type = "jpeg")

_A_r_g_u_m_e_n_t_s:

      a1: The item discrimation parameters for theta 1

      a2: The item discrimation parameters for theta 2

       d: The item difficulty parameters 

correlation: The correlation between theta 1 and theta 2. If the
          correlation does not equal to zero, the a1 and a2 will be
          transformed to maintain the orthogonal assumption of the two
          dimensions of thetas 

   alpha: The information direction 

   scale: The control parameter of the plot size

filename: The filename in which the user saves the plot; if the
          filename is provided, the function will automatically save
          the plot for the users by the provided filename.  

    type: The format of files in which the user saves the plot 

_D_e_t_a_i_l_s:

     The item/test information of MIRT has three key objects:1, the
     positive response probability; 2, the negative response
     probability; 3, the direction.  In the two dimensional case, the
     information formula is
     P*(1-P)*(a1*cos(alpha1)+a2*cos(alpha2))^2,where alpha1+ alpha2=90.
     Therefore, both of the thetas and direction (alpha1 or alpha2)
     have effect on the test information. The clamshell plot is to
     demonstrate how the information change along with the directions
     at the different theta coordinates.

_A_u_t_h_o_r(_s):

     Zhan Shu, Terry Ackerman

_R_e_f_e_r_e_n_c_e_s:

     Ackerman.T,(1994), Using Multidimensional Item Response Theory to
     understand what the items and tests are measuring, Applied
     Measurement in Education,7(4),255-278.
      Ackerman.T, Girel.M,(2003), Using Multidimensional Item Response
     Theory to Evaluate Educational and Psychological Tests,
     Educational Measurement: Issues and Practices.

_E_x_a_m_p_l_e_s:

     a1<-c(0.48,1.16,1.48,0.44,0.36, 1.78 , 0.64 , 1.10 , 0.76 , 0.52 , 0.83 ,0.88, 0.34 , 0.74 , 0.66)
     a2<-c( 0.54, 0.35, 0.44, 1.72, 0.69, 0.47 1.21 1.74 0.89, 0.53, 0.41, 0.98, 0.59, 0.59, 0.70)
     d<-c( -1.11,0.29, 1.51,-0.82,-1.89,-0.49,1.35,0.82,-0.21,-0.04,-0.68, 0.22,-0.86,-1.33, 1.21)
     clamshell.plot(a1,a2,d)
     clamshell.plot(a1,a2,d,scale=0.1) # Change the size of clamshell plot
     clamshell.plot(a1,a2,d,correlation=0.3) # check the impact of thetas' correlation on the information 

