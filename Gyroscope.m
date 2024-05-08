classdef Gyroscope
    properties
        DynamicRange        = 0;    % deg   +-
        InitialBiasError    = 0;    % deg/sec   +-
        InRunBiasStability  = 0;    % deg/hr    1 sigma
        RandomWalk          = 0;    % deg/sqrt(hr)  1 sigma
        NoiseDensity        = 0;    % deg/sec/sqrt(Hz)  25 Hz rms
    end

    methods
        function obj = Gyroscope(GyroName)
            switch(GyroName)
                case "ADIS-16480"
                    obj.DynamicRange        = 450;      % deg   +-
                    obj.InitialBiasError    = 0.2;      % deg/sec   +-
                    obj.InRunBiasStability  = 6.25;     % deg/hr    1 sigma
                    obj.RandomWalk          = 0.3;      % deg/sqrt(hr)  1 sigma
                    obj.NoiseDensity        = 0.0066;   % deg/sec/sqrt(Hz)  25 Hz rms
            end
        end
    end
end