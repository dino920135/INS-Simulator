function [accel, gyro] = matlab2IMUStruct(t, matAccel, matGyro)
    accel.t = t;
    accel.x = matAccel(:, 1);
    accel.y = matAccel(:, 2);
    accel.z = matAccel(:, 3);
    
    gyro.t = t;
    gyro.x = matGyro(:, 1);
    gyro.y = matGyro(:, 2);
    gyro.z = matGyro(:, 3);
end