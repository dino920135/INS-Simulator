%% Generate IMU Gyro Readings 

simulateRate = 1000;
simulateTime = 100;

accel.t = (0:(1/simulateRate):simulateTime).';
accel.x = zeros(simulateTime * simulateRate + 1, 1);
accel.y = zeros(simulateTime * simulateRate + 1, 1);
accel.z = zeros(simulateTime * simulateRate + 1, 1);

gyro.t = (0:(1/simulateRate):simulateTime).';
gyro.x = zeros(simulateTime * simulateRate + 1, 1);
gyro.y = zeros(simulateTime * simulateRate + 1, 1);
gyro.z = zeros(simulateTime * simulateRate + 1, 1);

ADIS16480 = IMU("ADIS-16480", "ADIS-16480", 200);

%% RandomStream

%% RandomWalk

%% Bias Instability (In Run Bias)

%% Initial Bias (Run to Run Bias)
