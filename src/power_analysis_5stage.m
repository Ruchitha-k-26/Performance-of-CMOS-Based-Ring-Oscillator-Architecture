% power_analysis_5stage.m

% Parameters
Vdd = 0.8;             % Supply voltage (V)
f_osc = 4.5e9;         % Oscillation frequency (Hz)
N = 5;                 % Number of stages

% Time configuration
delay_per_stage = 1 / (2 * f_osc * N);
T = delay_per_stage / 10;
t_total = 10 / f_osc;
time = 0:T:t_total;

% Initialize output states
Vout = zeros(N, length(time));
Vout(:, 1) = [1; 0; 0; 0; 0] * Vdd;  % Initial conditions

% Simulate the ring oscillator
for t = 2:length(time)
    for stage = 1:N
        prev_stage = mod(stage - 2, N) + 1;
        Vout(stage, t) = Vdd * (Vout(prev_stage, t-1) < Vdd/2);
    end
end

% Power calculation
I = Vdd * abs(diff(Vout(1, :))) / delay_per_stage;
I = [I, 0];
P_inst = Vdd * I;
P_avg = mean(P_inst);

% Plotting
figure;
subplot(3, 1, 1);
plot(time, Vout');
xlabel('Time (s)'); ylabel('Voltage (V)');
title('Waveforms of Ring Oscillator Stages');

subplot(3, 1, 2);
plot(time, I);
xlabel('Time (s)'); ylabel('Current (A)');
title('Current Through the Oscillator');

subplot(3, 1, 3);
plot(time, P_inst);
xlabel('Time (s)'); ylabel('Power (W)');
title('Instantaneous Power Consumption');

fprintf('Average Power Consumption: %.2e W\n', P_avg);
