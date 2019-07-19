% This script generates xyz points in a .sldcrv file that will form the
% outline of the wing, rudder and horizontal stabilizer.

%% Wing End 1 file
basePath = fullfile(fileparts(fileparts(which('OCKModel.slx'))),'CAD');

wingFileName = 'wing1Orig.sldcrv';

wing1 = load(wingFileName);

newFileName = 'wing1.sldcrv';

fileID = fopen(newFileName,'w');

% [wingX,wingZ]=load(plant.wingShapeFileName);

% Scale to appropriate size
scaleFactor = 0.015;

wingX = wing1(:,1)*scaleFactor;

wingY = wing1(:,2)*scaleFactor;

wingZ = wing1(:,3)*scaleFactor;

% Convert to in

% wingX = -39.3701*wingX; % Flip the x coordinate so that the leading edge is pointed towards +x dir
% 
% wingY = 39.3701*wingY;
% 
% wingZ = 39.3701*wingZ;

% fileID = fopen('exp.txt','w');

fprintf(fileID,'%.4fm %.4fm %.4fm\r\n',[wingX';wingY';wingZ']);

% fclose(fileID);

fclose('all');

%% Wing End 2 file

basePath = fullfile(fileparts(fileparts(which('OCKModel.slx'))),'CAD');

wingFileName = 'wing2Orig.sldcrv';

wing2 = load(wingFileName);

newFileName = 'wing2.sldcrv';

fileID = fopen(newFileName,'w');

% Scale to appropriate size

wingX = wing2(:,1)*scaleFactor;

wingY = wing2(:,2)*scaleFactor;

wingZ = wing2(:,3)*scaleFactor;

% Convert to m

wingX = 0.0254*wingX; % Flip the x coordinate so that the leading edge is pointed towards +x dir

wingY = 0.0254*wingY;

wingZ = 0.0254*wingZ;

% fileID = fopen('exp.txt','w');

fprintf(fileID,'%.4fm %.4fm %.4fm\r\n',[wingX';wingY';wingZ']);

% fclose(fileID);

fclose('all');


%% Rudder Tip File

rudderTipScaleFactor = 0.75;

basePath = fullfile(fileparts(fileparts(which('OCKModel.slx'))),'CAD');

rudderFileName = 'rudderTipOrig.sldcrv';

rudderTip = load(rudderFileName);

newFileName = 'rudderTip.sldcrv';

fileID = fopen(newFileName,'w');

% Flip and shift so that it goes in -x direction

% Scale to appropriate size

rudderXt = rudderTip(:,1)*scaleFactor;

rudderYt = rudderTip(:,2)*scaleFactor;

rudderZt = rudderTip(:,3)*scaleFactor;

%Increase length

rudderXt = rudderXt*2 - rudderXt(1) - .25;

% Convert to in

rudderXt = 0.0254*rudderXt;

rudderYt = 0.0254*rudderYt;

rudderZt = 0.0254*rudderZt;

% fileID = fopen('exp.txt','w');

fprintf(fileID,'%.6fm %.6fm %.6fm\r\n',[rudderXt';rudderYt';rudderZt']);

% fclose(fileID);

fclose('all');

%% Rudder Base File

rudderBaseScaleFactor = 1.75;

basePath = fullfile(fileparts(fileparts(which('OCKModel.slx'))),'CAD');

rudderFileName = 'rudderBaseOrig.sldcrv';

rudderBase = load(rudderFileName);

newFileName = 'rudderBase.sldcrv';

fileID = fopen(newFileName,'w');

% Flip and shift so that it goes in -x direction
% Scale to appropriate size

rudderXb = rudderBase(:,1)*scaleFactor;

rudderYb = rudderBase(:,2)*scaleFactor;

rudderZb = rudderBase(:,3)*scaleFactor;

%Increase length

rudderXb = rudderXb*1.85 - rudderXb(1)*.85;

% Move backwards
% Convert to in

rudderXb = 0.0254*rudderXb;

rudderYb = 0.0254*rudderYb;

rudderZb = 0.0254*rudderZb;

% fileID = fopen('exp.txt','w');

fprintf(fileID,'%.6fm %.6fm %.6fm\r\n',[rudderXb';rudderYb';rudderZb']);

% fclose(fileID);

fclose('all');

%% Stabilizer Tip 1

basePath = fullfile(fileparts(fileparts(which('OCKModel.slx'))),'CAD');

stabilizerFileName = 'stabilizerTip1Orig.sldcrv';

stabilizer = load(stabilizerFileName);

newFileName = 'stabilizerTip1.sldcrv';

fileID = fopen(newFileName,'w');

% Scale to appropriate size

stabilizerX1 = stabilizer(:,1)*scaleFactor;

stabilizerY1 = stabilizer(:,2)*scaleFactor;

stabilizerZ1 = stabilizer(:,3)*scaleFactor;

%Double distance from zero and increase chord length

stabilizerX1 = stabilizerX1*2 - stabilizerX1(1);

stabilizerY1 = stabilizerY1*2;

% Convert to in

stabilizerX1 = 0.0254*stabilizerX1;

stabilizerY1 = 0.0254*stabilizerY1;

stabilizerZ1 = 0.0254*stabilizerZ1;

% Move backwards

% fileID = fopen('exp.txt','w');

fprintf(fileID,'%.6fm %.6fm %.6fm\r\n',[stabilizerX1';stabilizerY1';stabilizerZ1']);

fclose('all');

%% Stabilizer Tip 2

basePath = fullfile(fileparts(fileparts(which('OCKModel.slx'))),'CAD');

stabilizerFileName = 'stabilizerTip2Orig.sldcrv';

newFileName = 'stabilizerTip2.sldcrv';

fileID = fopen(newFileName,'w');

stabilizer = load(stabilizerFileName);

% Scale to appropriate size

stabilizerX2 = stabilizer(:,1)*scaleFactor;

stabilizerY2 = stabilizer(:,2)*scaleFactor;

stabilizerZ2 = stabilizer(:,3)*scaleFactor;

%Double distance from zero and increase chord length

stabilizerX2 = stabilizerX2*2 - stabilizerX2(1);

stabilizerY2 = stabilizerY2*2;

% Convert to in

stabilizerX2 = 0.0254*stabilizerX2;

stabilizerY2 = 0.0254*stabilizerY2;

stabilizerZ2 = 0.0254*stabilizerZ2;

% Move backwards

% fileID = fopen('exp.txt','w');

fprintf(fileID,'%.6fm %.6fm %.6fm\r\n',[stabilizerX2';stabilizerY2';stabilizerZ2']);

fclose('all');