s = tf('s');

H = (a_phi_2)/(s^3+s^2*(a_phi_1+a_phi_2*k_d_phi)+a_phi_2*k_p_phi);
rlocus(H);