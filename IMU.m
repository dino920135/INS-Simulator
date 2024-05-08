classdef IMU    
    properties
        Gyroscope = NaN;
        Accelerometer = NaN;

        samplingRate = 100; % Hz                                                                          
    end
    methods
        function obj = IMU(GyroName, AccelName, samplingRate)
            if nargin < 2
                disp("Not enough input");
            elseif nargin < 3
                obj.Gyroscope = Gyroscope(GyroName);
                obj.Accelerometer = Accelerometer(AccelName);
            elseif nargin < 4
                obj.Gyroscope = Gyroscope(GyroName);
                obj.Accelerometer = Accelerometer(AccelName);
                obj.samplingRate = samplingRate;
            end

            obj.dispSpec;
        end

        function dispSpec(obj)
            disp(obj)
            disp(obj.Gyroscope)
            disp(obj.Accelerometer)
        end
    end
end

