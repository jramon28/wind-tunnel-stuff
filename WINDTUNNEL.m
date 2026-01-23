
%%% WEEK 1 %%%%
% Air properties (ideal gas density)
P = 100350;      % ambient pressure [Pa]
M = 0.02897;     % molar mass of air [kg/mol]
T = 296.15;      % temperature [K]
R = 8.314;       % universal gas constant [J/(mol*K)] = [Pa*m^3/(mol*K)]
rho = (P*M)/(R*T);   % air density [kg/m^3]
% Data (from your table)
power = [0 10 20 30 40 50 60 70 80 90 100];   % wind tunnel setting [%]
dp = [0 13.2 80.251 204.48 372.425 596.952 ...
     859.46 1164.55 1537.695 1910.84 2283.985];  % Pitot Δp [Pa]
% Pitot tube velocity
U = sqrt(2 .* dp ./ rho);   % [m/s]
% Plot: Velocity vs Power %
figure
plot(power, U, 'o-', 'LineWidth', 1.5, 'MarkerSize', 6)
grid on
xlabel('Wind Tunnel Power Setting (%)')
ylabel('Freestream Velocity (m/s)')
title('Pitot Tube Calibration: Velocity vs Power Setting')


%%%% WEEK 2 %%%%

