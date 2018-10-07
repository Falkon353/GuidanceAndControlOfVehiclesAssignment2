dag2rad = pi/180;
radg2dag = 180/pi;

g = -9.81;
V_a = 580*1000/3600;
V_g = V_a;
d = 1.5*dag2rad;

a_phi_1 = 2.87;
a_phi_2 = -0.65;

delta_a_max = 30*dag2rad;
e_max = 15*dag2rad;
omega_n = sqrt(abs(a_phi_2)*delta_a_max/e_max);
zeta = 0.707;
omega_x = 1/10 * omega_n;
zeta_x = zeta;

k_d_phi = (2*zeta*omega_n-a_phi_1)/a_phi_2;
k_p_phi = delta_a_max/e_max*sign(a_phi_2);
k_i_phi = 1;

k_p_khi = (V_g/g)*2*zeta_x*omega_x;
k_i_khi = (V_g/g)*(omega_x)^2;

Desiered_khi = 0;