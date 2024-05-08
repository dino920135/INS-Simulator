function plotIMUSignal(accel, gyro, holdOpt, lineOpt, plotTitle)
figure(1)
subplot(3, 2, 1)
plot(accel.t, accel.x, lineOpt); axis tight; hold(holdOpt);
ylabel('m/s')
title('Acceleration')
subplot(3, 2, 3)
plot(accel.t, accel.y, lineOpt); axis tight; hold(holdOpt);
ylabel('m/s')
subplot(3, 2, 5)
plot(accel.t, accel.z, lineOpt); axis tight; hold(holdOpt);
ylabel('m/s')

subplot(3, 2, 2)
plot(gyro.t, gyro.x, lineOpt); axis tight; hold(holdOpt);
ylabel('rad/s')
title('Gyroscope')
subplot(3, 2, 4)
plot(gyro.t, gyro.y, lineOpt); axis tight; hold(holdOpt);
ylabel('rad/s')
subplot(3, 2, 6)
plot(gyro.t, gyro.z, lineOpt); axis tight; hold(holdOpt);
ylabel('rad/s')

sgtitle(plotTitle)

end