s = tf('s');

%H = (-a_phi_2)/(s*(s^2+(a_phi_1+a_phi_2*k_d_phi))+a_phi_2*k_p_phi);
%rlocus(H);

sys = -1*((a_phi_2)/(s*(s^2 + (a_phi_1 + a_phi_2 * k_d_phi)*s + a_phi_2*k_p_phi)));
rlocus(sys);

% roots = zeros(3,2000);
% K_i_phi = linspace(-100,100);
% for i = 1:numel(K_i_phi)
%     i
%     k_i_phi = K_i_phi(i);
%     a_1 = 1;
%     a_2 = a_phi_1+a_phi_2*k_d_phi;
%     a_3 = a_phi_2*k_p_phi;
%     a_4 = a_phi_2*k_i_phi;
% 
%     p = [a_1 a_2 a_3 a_4];
%     roots(:,i) = roots(p);
% end
% 
% plot(K_phi_i,roots);