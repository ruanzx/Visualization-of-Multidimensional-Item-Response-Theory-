correlation.plot            package:MIRTG            R Documentation

_F_u_n_c_t_i_o_n _t_o _s_h_o_w _t_h_e _d_i_r_e_c_t_i_o_n _a_t _w_h_i_c_h _t_h_e _c_o_m_p_o_s_i_t_e _t_h_e_t_a_s _h_a_v_e _t_h_e _l_a_r_g_e_s_t _c_o_r_r_e_l_a_t_i_o_n _w_i_t_h _t_h_e _t_o_t_a_l _s_c_o_r_e

_D_e_s_c_r_i_p_t_i_o_n:

     The function will show at what angle the composite thetas will be
     maximumly correlated with the true score.

_U_s_a_g_e:

     correlation.plot(a1, a2, d, theta1, theta2, score, correlation = 0, filename = "NA", type = "jpeg")

_A_r_g_u_m_e_n_t_s:

      a1: The item discrimation parameter of theta 1 

      a2: The item discrimation parameter of theta 2

       d: The item difficulty parameter

  theta1: The examines' theta 1 

  theta2: The examines' theta 2 

   score: The examinees' score 

correlation: The correlation between theta 1 and theta 2. If the
          correlation does not equal to zero, the a1 and a2 will be
          transformed to maintain the orthogonal assumption of the two
          dimensions of thetas 

filename: The filename in which the user saves the plot; if the
          filename is provided, the function will automatically save
          the plot for the users by the provided filename. 

    type: The format of files in which the user saves the plot 

_D_e_t_a_i_l_s:

     The theta space in the plot is divided into eight sub-space based
     on the magnitude and signs of the two dimensions of thetas. The
     direction where the composite theta has the highest correlation
     with the total score is investigated within each sub-space. 
      The function allows four different combinations of the input
     parameters: 1, a1, a2 and d; 2, a1, a2, d and theta; 3, theta and
     score; 4, score. 
      The number within each sub-space is the direction (angle between
     the composite theta and theta 1), whose font size is related to
     the magnitude of the correlation. The greater the correlation, the
     greater the font size.

_A_u_t_h_o_r(_s):

     Zhan Shu, Terry Ackerman

_R_e_f_e_r_e_n_c_e_s:

     Ackerman,T.(1996),Graphical Representation of Multidimensional
     Item Response Theory Analyses,Applied Psychological
     Measurement,20(4),311-329.

_E_x_a_m_p_l_e_s:

     a1<-c(0.48,1.16 , 1.48 , 0.44 , 0.36 , 1.78 , 0.64 , 1.10 , 0.76 , 0.52 , 0.83 ,0.88, 0.34 , 0.74 , 0.66)
     a2<-c( 0.54, 0.35, 0.44, 1.72, 0.69, 0.47 1.21 1.74 0.89, 0.53, 0.41, 0.98, 0.59, 0.59, 0.70)
     d<-c( -1.11,0.29, 1.51,-0.82,-1.89,-0.49,1.35,0.82,-0.21,-0.04,-0.68, 0.22,-0.86,-1.33, 1.21)
     correlation.plot(a1,a2,d)

