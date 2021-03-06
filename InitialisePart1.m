deg2rad = pi/180;
rad2deg = 180/pi;

g = 9.81;
V_a = 580*1000/3600;
V_g = V_a;
d = 1.5*deg2rad;

h = 0.01;

roll_v = (0.2*deg2rad)^2;
yaw_v = (0.2*deg2rad)^2;

a_phi_1 = 2.87;
a_phi_2 = -0.65;

delta_a_max = 30*deg2rad;
e_max = 15*deg2rad;
omega_n = sqrt(abs(a_phi_2)*delta_a_max/e_max);
zeta = 0.707;
omega_x = 1/10 * omega_n;
zeta_x = 0.3;

k_d_phi = (2*zeta*omega_n-a_phi_1)/a_phi_2;
k_p_phi = delta_a_max/e_max*sign(a_phi_2);
k_i_phi = -1;

k_p_khi = (V_g/g)*2*zeta_x*omega_x;
k_i_khi = (V_g/g)*(omega_x)^2;

Desiered_khi = 0;

A = [-0.322, 0.052, 0.028, -1.12, 0.002;
              0,     0,     1    -0.001, 0;
         -10.6, 0, -2.87, 0.46, -0.65;
             6.87, 0, -0.04, -0.32, -0.02;
             0, 0, 0, 0, -7.5];
         
B = [0; 0; 0; 0; -7.5];

%%% Kalam constants
Q_vec = [0.001; 1; 100; 10; 0];
Q = h*10^(-6)*diag(Q_vec); 

P_0 = zeros(4,4);
x_0 = zeros(4,1);

R_vec = [roll_v; yaw_v]; 
R = diag(R_vec);

C = [ 0   0  1   0;
      0   0  0   1];
  
E = eye(4);

[PHI, DELTA] = c2d(A(1:4,1:4),A(1:4,5),h);
[PHI,GAMMA]  = c2d(A(1:4,1:4),E,h);





