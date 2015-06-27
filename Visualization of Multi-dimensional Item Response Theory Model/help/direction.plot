direction.plot             package:MIRTG             R Documentation

_F_u_n_c_t_i_o_n _t_o _s_h_o_w _t_h_e _d_i_r_e_c_t_i_o_n _w_i_t_h _m_a_x_i_m_u_m _i_n_f_o_r_m_a_t_o_i_n

_D_e_s_c_r_i_p_t_i_o_n:

     The function investigates the direction (the angle between the
     information and the theta 1) at which the test/item has the
     maximum information for the given thetas.

_U_s_a_g_e:

     direction.plot(a1, a2, d, correlation = 0, filename = "NA", type = "jpeg")

_A_r_g_u_m_e_n_t_s:

      a1: The item discrimination parameters for theta 1 

      a2: The item discrimination parameters for theta 2 

       d: The item diffculty parameters 

correlation: The correlation between theta 1 and theta 2. If the
          correlation does not equal to zero, the a1 and a2 will be
          transformed to maintain the orthogonal assumption of the two
          dimensions of thetas 

filename: The filename in which the user saves the plot; if the
          filename is provided, the function will automatically save
          the plot for the users by the provided filename. 

    type: The format of files in which the user saves the plot  

_D_e_t_a_i_l_s:

     The angles, where the maximum information will be achieved at
     given theta positions,will be ploted in the graphic feactured with
     their font size related to the informaton magnitude (the greater
     the information, the greater the font size).

_A_u_t_h_o_r(_s):

     Zhan Shu, Terry Ackerman

_R_e_f_e_r_e_n_c_e_s:

     Ackerman,T.(1996),Graphical Representation of Multidimensional
     Item Response Theory Analyses,Applied Psychological
     Measurement,20(4),311-329.

_E_x_a_m_p_l_e_s:

     a1<-c(0.48 , 1.16 , 1.48 , 0.44 , 0.36 , 1.78 , 0.64 , 1.10 , 0.76 , 0.52 , 0.83 ,0.88, 0.34 , 0.74 , 0.66)
     a2<-c( 0.54, 0.35, 0.44, 1.72, 0.69, 0.47, 1.21, 1.74, 0.89, 0.53, 0.41, 0.98, 0.59, 0.59, 0.70)
     d<-c( -1.11,0.29, 1.51,-0.82,-1.89,-0.49,1.35,0.82,-0.21,-0.04,-0.68, 0.22,-0.86,-1.33, 1.21)
     direction.plot(a1,a2,d, correlation=0.3)

