centroid.plot             package:MIRTG             R Documentation

_F_u_n_c_t_i_o_n _t_o _d_r_a_w _c_e_n_t_r_o_i_d _p_l_o_t

_D_e_s_c_r_i_p_t_i_o_n:

     The function performs to draw a plot to show the relationship
     between the total score and the average of thetas of the examines
     who get the total score.

_U_s_a_g_e:

     centroid.plot(a1, a2, d, theta1, theta2, score, correlation = 0, condition = TRUE, filename = "NA", type = "jpeg")

_A_r_g_u_m_e_n_t_s:

      a1: The item discrimination parameters for theta1 

      a2: The item discrimination parameters for theta2 

       d: The item difficulty parameters 

  theta1: The theta 1 values of the examines

  theta2: The theta 2 values of the examines 

   score: The examines' total score 

correlation: The correlation between theta 1 and theta 2. If the
          correlation does not equal to zero, the a1 and a2 will be
          transformed to maintain the orthogonal assumption of the two
          dimensions of thetas

condition: A logical value to indicate if you need the function to plot
          the theta variance; if condition=TRUE, the conditional
          variance of the thetas will be shown in the plot, otherwise,
          it will not be shown. 

filename: The filename in which the user saves the plot; if the
          filename is provided, the function will automatically save
          the plot for the users by the provided filename. 

    type: The format of files in which the user saves the plot 

_D_e_t_a_i_l_s:

     Four kinds of input methods are provided by this function: 1, a1,
     a2 and d. What the functions requires is item parameters and the
     examines' ability will be simulated; 2, a1, a2,d and theta. The
     function also allows the users to provide the item and examines'
     parameters at the same time; 3,theta and score. If the item
     parameters are not available, the users can only  input the
     examines' theta and score; 4:score. The function even works if
     only score is available, however, the result returned by the
     function will not be accurate. Any of the four input methods will
     work well with the function.

_V_a_l_u_e:

     The x axis is the theta1; the y axis is theta2; the colored
     numbers represent the total score at the corresponding theta 1 and
     theta 2.

_A_u_t_h_o_r(_s):

     Zhan Shu, Terry Ackerman

_R_e_f_e_r_e_n_c_e_s:

     Ackerman,T.(1996),Graphical Representation of Multidimensional
     Item Response Theory Analyses,Applied Psychological
     Measurement,20(4),311-329.

_E_x_a_m_p_l_e_s:

     a1<-c(0.48,1.16,1.48,0.44,0.36,1.78,0.64,1.10,0.76,0.52,0.83,0.88,0.34,0.74,0.66)
     a2<-c( 0.54,0.35,0.44,1.72,0.69,0.47,1.21,1.74,0.89,0.53,0.41,0.98,0.59,0.59,0.70)
     d<-c( -1.11,0.29,1.51,-0.82,-1.89,-0.49,1.35,0.82,-0.21,-0.04,-0.68,0.22,-0.86,-1.33,1.21)
     centroid.plot(a1,a2,d)
     centroid.plot(a1,a2,d,condition=FALSE)
     centroid.plot(a1,a2,d,filename="centroid",type="jepg")

