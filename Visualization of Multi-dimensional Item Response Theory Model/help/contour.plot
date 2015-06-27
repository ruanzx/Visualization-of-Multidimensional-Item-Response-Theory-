contour.plot              package:MIRTG              R Documentation

_F_u_n_c_t_i_o_n _t_o _d_r_a_w _t_h_e _c_o_n_t_o_u_r _p_l_o_t

_D_e_s_c_r_i_p_t_i_o_n:

     The function is provide to draw the contour of the item or test
     surface.

_U_s_a_g_e:

     contour.plot(a1, a2, d, correlation = 0, level = c(1:length(a1)), vector = FALSE, filename = "NA", type = "jpeg")

_A_r_g_u_m_e_n_t_s:

      a1: The item discrimination parameters for theta 1 

      a2: The item discrimination parameters for theta 2 

       d: The item difficulty parameters 

correlation: The correlation between theta 1 and theta 2. If the
          correlation does not equal to zero, a1 and a2 will be
          transformed to maintain the orthogonal assumption of the two
          dimensions of thetas 

   level: The levels of contour plot 

  vector: A logical value to indicate if you need to plot the item
          vector; if VECTOR=TRUE, the item vector will be shown in the
          plot, otherwise, it will not be shown. 

filename: The filename in which the user saves the plot; if the
          filename is provided, the function will automatically save
          the plot for the users by the provided filename.  

    type: The format of files in which the user saves the plot 

_D_e_t_a_i_l_s:

     The function could plot the test/item contour, depending on the
     parameters you input. If only one sigle item parameter is
     provided, the function will plot item contour, otherwise, test
     contour will be plotted by  the function.

_A_u_t_h_o_r(_s):

     Zhan Shu, Terry Ackerman

_R_e_f_e_r_e_n_c_e_s:

     Ackerman,T.(1996),Graphical Representation of Multidimensional
     Item Response Theory Analyses,Applied Psychological
     Measurement,20(4),311-329.

_E_x_a_m_p_l_e_s:

     a1<-c(0.48,1.16,1.48,0.44,0.36,1.78,0.64,1.10,0.76,0.52,0.83,0.88,0.34,0.74,0.66)
     a2<-c(0.54, 0.35, 0.44, 1.72, 0.69, 0.47 1.21 1.74 0.89, 0.53, 0.41, 0.98, 0.59, 0.59, 0.70)
     d<-c(-1.11,0.29, 1.51,-0.82,-1.89,-0.49,1.35,0.82,-0.21,-0.04,-0.68, 0.22,-0.86,-1.33, 1.21)
     contour.plot(a1,a2,d) # test contour
     contour.plot(a1[1],a2[1],d[1])# item contour

