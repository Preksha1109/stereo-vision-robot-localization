% Camera Parameters Calibration 
% Author: <Preksha Krishnan>

% Display the full object 
disp(cameraParams);  % Shows a summary in the Command Window

% 1. Intrinsic Matrix 
K = cameraParams.IntrinsicMatrix';  % Transpose to match [fx 0 cx; 0 fy cy; 0 0 1]
disp('Intrinsic Matrix K:');
disp(K);

% 2. Focal Length (fx, fy) 
fx = cameraParams.FocalLength(1);
fy = cameraParams.FocalLength(2);
disp(['Focal Length fx: ', num2str(fx), ', fy: ', num2str(fy)]);

% 3. Principal Point (cx, cy) 
cx = cameraParams.PrincipalPoint(1);
cy = cameraParams.PrincipalPoint(2);
disp(['Principal Point cx: ', num2str(cx), ', cy: ', num2str(cy)]);

% 4. Distortion Coefficients 
distCoeffs = cameraParams.RadialDistortion;         % [k1, k2]
tangential = cameraParams.TangentialDistortion;     % [p1, p2]
disp('Radial Distortion (k1, k2):');
disp(distCoeffs);
disp('Tangential Distortion (p1, p2):');
disp(tangential);

% 5. Reprojection Errors (Mean) 
meanError = mean(cameraParams.MeanReprojectionError);
disp(['Mean Reprojection Error: ', num2str(meanError), ' pixels']);

% 6. Visualizations 
figure;
showReprojectionErrors(cameraParams);
title('Reprojection Errors');

figure;
showExtrinsics(cameraParams, 'CameraCentric');
title('Camera Extrinsics');
