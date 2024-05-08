classdef Accelerometer
    properties
        DynamicRange        = 0;    % g +-
        InRunBiasStability  = 0;    % mg    1 sigma
        RandomWalk          = 0;    % m/s/sqrt(hr)  1 sigma
        NoiseDensity        = 0;    % mg/sqrt(Hz)   25 Hz rms
    end

    methods
        function obj = Accelerometer(AccelName)
            switch(AccelName)
                case "ADIS-16480"
                    obj.DynamicRange        = 10;       % g +-
                    obj.InRunBiasStability  = 0.1;      % mg    1 sigma
                    obj.RandomWalk          = 0.029;    % m/s/sqrt(hr)  1 sigma
                    obj.NoiseDensity        = 0.067;    % mg/sqrt(Hz)   25 Hz rms
            end
        end
    end
end